import { EntityPage } from "@/components/EntityPage"; export default async function Page({params}:{params:Promise<{slug:string}>}){return <EntityPage type="jobs" slug={(await params).slug}/>;}
