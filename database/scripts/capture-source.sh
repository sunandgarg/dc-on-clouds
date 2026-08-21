#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 /absolute/output/directory" >&2
  exit 64
fi

: "${SOURCE_PG_SERVICE:?Set SOURCE_PG_SERVICE to a libpq service name for the read-only Supabase connection}"

for command_name in pg_dump psql; do
  if ! command -v "$command_name" >/dev/null 2>&1; then
    echo "Required command not found: $command_name" >&2
    exit 69
  fi
done

if command -v sha256sum >/dev/null 2>&1; then
  checksum_command=(sha256sum)
elif command -v shasum >/dev/null 2>&1; then
  checksum_command=(shasum -a 256)
else
  echo "Required command not found: sha256sum or shasum" >&2
  exit 69
fi

output_dir=$1
case "$output_dir" in
  /*) ;;
  *) echo "Output directory must be an absolute path" >&2; exit 64 ;;
esac

script_dir=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)
inventory_sql="$script_dir/../live-inventory.sql"

umask 077
mkdir -p "$output_dir"

pg_dump \
  --dbname="service=$SOURCE_PG_SERVICE" \
  --schema-only \
  --no-owner \
  --no-privileges \
  --file="$output_dir/source-public-schema.sql" \
  --schema=public

psql \
  --dbname="service=$SOURCE_PG_SERVICE" \
  --no-psqlrc \
  --set=ON_ERROR_STOP=1 \
  --file="$inventory_sql" \
  > "$output_dir/source-live-inventory.txt"

"${checksum_command[@]}" \
  "$output_dir/source-public-schema.sql" \
  "$output_dir/source-live-inventory.txt" \
  > "$output_dir/SHA256SUMS"

if ! pg_dump \
  --dbname="service=$SOURCE_PG_SERVICE" \
  --format=custom \
  --no-owner \
  --no-privileges \
  --file="$output_dir/source-public.dump" \
  --schema=public; then
  rm -f "$output_dir/source-public.dump"
  echo "Full data capture failed. A role subject to row-level security cannot produce a complete migration dump." >&2
  echo "The checksummed schema and inventory artifacts remain usable; obtain an owner-approved export role with complete row visibility." >&2
  exit 77
fi

"${checksum_command[@]}" \
  "$output_dir/source-public.dump" \
  "$output_dir/source-public-schema.sql" \
  "$output_dir/source-live-inventory.txt" \
  > "$output_dir/SHA256SUMS"

echo "Encrypted-at-rest handling is required for: $output_dir"
echo "Source capture complete. No Auth or Storage object payloads were exported."
