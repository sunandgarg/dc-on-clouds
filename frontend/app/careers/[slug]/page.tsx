import { EntityPage } from "@/components/EntityPage"; export default async function Page({params}:{params:Promise<{slug:string}>}){return <EntityPage type="careers" slug={(await params).slug}/>;}
