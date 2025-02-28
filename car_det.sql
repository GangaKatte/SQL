create database car;
use car;
-- read data --
select * from car_info;
-- total counts --

-- cars available in 2023 --
 select count(*) from car_info
 where year =2023;
 
 -- cars available in 2020,2021,2022 --
  select count(*) from car_info
 where year between 2020 and 2022;
 
  select count(*) from car_info
  where year in (2020,2021,2022)
  group by year;
  
 -- client need only total count of year details not all --
 
  select year, count(*) from car_info
  group by year;
  
  
 -- client need disel car in 2020--
 select year,count(*) from car_info
 where year =2020
group by fuel
having fuel ="Diesel";

 select count(*) from car_info where year =2020 and fuel ="Diesel";
 select count(*) from car_info where year =2020 and fuel ="Petrol";
 
  -- client need disel,petro,cng  car in all year--
  select year,count(*) from car_info where fuel="Diesel" 
  group by year;
select year,count(*) from car_info where fuel="Petrol" 
  group by year;
select year,count(*) from car_info where fuel="CNG" 
  group by year;

-- year having 100 and more cars--
select year,count(*) from car_info
group by year
having count(*)>100;

-- car count details between 2015 and 2023--
select count(*) from car_info
where year between 2015 and 2023
;
-- car whole details between 2015 and 2023--
select * from car_info
where year between 2015 and 2023
;
-- end--