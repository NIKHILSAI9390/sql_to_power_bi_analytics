with cte as (select * from [dataanalysis ].[dbo].bike_share_yr_0
union all
select * from [dataanalysis ].[dbo].bike_share_yr_1)
select dteday,season, riders ,hr,a.yr,weekday,rider_type , price,COGS ,riders*price as revenue	
,riders*price -COGS AS profit from cte a
left join [dataanalysis ].[dbo].cost_table_1  b
on   a.yr = b.yr


