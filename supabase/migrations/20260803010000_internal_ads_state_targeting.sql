alter table public.ads
  add column if not exists target_state text;

alter table public.ads
  drop constraint if exists ads_target_type_check;

alter table public.ads
  add constraint ads_target_type_check
  check (target_type in ('universal', 'page', 'item', 'state', 'city'));

update public.ads
set
  target_state = coalesce(
    target_state,
    (
      select case when locations.state = 'Delhi' then 'Delhi NCR' else locations.state end
      from public.states_cities as locations
      where lower(locations.city) = lower(ads.target_city)
      order by locations.is_active desc
      limit 1
    ),
    case when target_city = 'Delhi' then 'Delhi NCR' else target_city end
  ),
  target_type = case when target_type = 'city' then 'state' else target_type end
where target_city is not null or target_type = 'city';

create index if not exists ads_active_target_state_idx
  on public.ads (is_active, target_type, target_state, position, priority desc);

comment on column public.ads.target_state is
  'Optional Indian state audience target. Values match the public listing filters.';
