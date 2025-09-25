#Capstone data_cleaning

create database Capstone;
Use capstone;

select * from capstone;

create table capstone_dup1 like capstone;

insert into capstone_dup1
select * from capstone;

update capstone_dup1
set order_date=str_to_date(order_date,'%m/%d/%Y'); 

alter table capstone_dup1
modify order_date date;

alter table capstone_dup1
modify order_time time;

select * from capstone_dup1;
                                                                                                                                                                                                                                                                                                                                                   
#Exploratory data analysis

select * from capstone_dup1;

select max(order_id) as total_orders
from capstone_dup1;

select count(distinct(pizza_id)) from capstone_dup1;
select  max(order_date), min(order_date)
from capstone_dup1;

select count(distinct(order_date))
from capstone_dup1;

select sum(quantity), sum(total_price)
from capstone_dup1;

select max(quantity) from capstone_dup1;
select * from capstone_dup1
where quantity = '3';

select pizza_size, sum(quantity) as total_quantity, sum(total_price) as total_sales
from capstone_dup1
group by pizza_size
order by 3 desc;

select pizza_category, sum(quantity) as total_quantity, sum(total_price) as total_sales
from capstone_dup1
group by pizza_category
order by 3 desc;

select pizza_id, sum(quantity) as total_quantity, sum(total_price) as total_sales
from capstone_dup1
group by pizza_id
order by sum(total_price) desc 
limit 10;

select order_id, sum(quantity) as total_quantity, sum(total_price) as total_sales
from capstone_dup1
group by order_id
order by sum(total_price) desc 
limit 10;



select quantity, total_price as total_sales,
case
	when pizza_size = 'M' and pizza_category = 'classic' then 'Classic_Medium'
    when pizza_size = 'L' and pizza_category = 'classic' then 'Classic_Large'
    when pizza_size = 'S' and pizza_category = 'classic' then 'Classic_Small'
    when pizza_size = 'XL' and pizza_category = 'classic' then 'Classic_XLarge'
    when pizza_size = 'M' and pizza_category = 'Veggie' then 'Veggie_Medium'
    when pizza_size = 'L' and pizza_category = 'Veggie' then 'Veggie_Large'
    when pizza_size = 'S' and pizza_category = 'Veggie' then 'Veggie_Small'
    when pizza_size = 'XL' and pizza_category = 'Veggie' then 'Veggie_XLarge'
   when pizza_size = 'M' and pizza_category = 'Supreme' then 'Supreme_Medium'
    when pizza_size = 'L' and pizza_category = 'Supreme' then 'Supreme_Large'
    when pizza_size = 'S' and pizza_category = 'Supreme' then 'Supreme_Small'
    when pizza_size = 'XL' and pizza_category = 'Supreme' then 'Supreme_XLarge'
    when pizza_size = 'M' and pizza_category = 'Chicken' then 'Chicken_Medium'
    when pizza_size = 'L' and pizza_category = 'Chicken' then 'Chicken_Large'
    when pizza_size = 'S' and pizza_category = 'Chicken' then 'Chicken_Small'
    when pizza_size = 'XL' and pizza_category = 'Chicken' then 'Chicken_XLarge'
End as label
from capstone_dup1;


create table Pizza_size_label(quantity INT, total_price float, label VARCHAR (50));

insert into Pizza_size_label
select quantity, total_price,
case
	when pizza_size = 'M' and pizza_category = 'classic' then 'Classic_Medium'
    when pizza_size = 'L' and pizza_category = 'classic' then 'Classic_Large'
    when pizza_size = 'S' and pizza_category = 'classic' then 'Classic_Small'
    when pizza_size = 'XL' and pizza_category = 'classic' then 'Classic_XLarge'
    when pizza_size = 'M' and pizza_category = 'Veggie' then 'Veggie_Medium'
    when pizza_size = 'L' and pizza_category = 'Veggie' then 'Veggie_Large'
    when pizza_size = 'S' and pizza_category = 'Veggie' then 'Veggie_Small'
    when pizza_size = 'XL' and pizza_category = 'Veggie' then 'Veggie_XLarge'
   when pizza_size = 'M' and pizza_category = 'Supreme' then 'Supreme_Medium'
    when pizza_size = 'L' and pizza_category = 'Supreme' then 'Supreme_Large'
    when pizza_size = 'S' and pizza_category = 'Supreme' then 'Supreme_Small'
    when pizza_size = 'XL' and pizza_category = 'Supreme' then 'Supreme_XLarge'
    when pizza_size = 'M' and pizza_category = 'Chicken' then 'Chicken_Medium'
    when pizza_size = 'L' and pizza_category = 'Chicken' then 'Chicken_Large'
    when pizza_size = 'S' and pizza_category = 'Chicken' then 'Chicken_Small'
    when pizza_size = 'XL' and pizza_category = 'Chicken' then 'Chicken_XLarge'
End as label
from capstone_dup1;

select * from pizza_size_label;

select label, sum(quantity) as quantity, sum(total_price) as total_sales
from pizza_size_label
group by label
order by total_sales desc;

