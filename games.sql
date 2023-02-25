-- task-1:
use world;
select * from games where (Year > 2000) and Global_Sales > 15
-- task-2
select  Genre,avg(Global_Sales) from world.games where (Year = 2010) group by Genre order by avg(Global_Sales) limit 10
-- task-3
select *,rank() over (partition by Publisher order by Global_Sales ) as ranking from world.games where ((Year = 2015) or (Year = 2012)) and 
								((Publisher = 'Sega') or (Publisher = 'Activision' )) and 
                                 (Genre = 'Sports')
-- task-3 
select Platform,sum(Global_Sales) as sum_sales,max(Global_Sales) as max_sales,min(Global_Sales)  as min_sales, count(Publisher) publisher_count
                from world.games group by Platform order by sum(Global_Sales) desc limit 5