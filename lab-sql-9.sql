select * from rental;

-- 1) Create a table rentals_may to store the data from rental table with information for the month of May.
create table rentals_may (
`rental_id` int UNIQUE NOT NULL,
`rental_date` datetime,
`inventory_id` mediumint unsigned,
`customer_id` smallint unsigned,
`return_date` datetime,
`staff_id` tinyint unsigned,
`last_update` timestamp,
CONSTRAINT PRIMARY KEY (rental_id));

-- 2) Insert values in the table rentals_may using the table rental, filtering values only for the month of May.
insert into rentals_may
select * from rental
where month(rental_date) = 5;

select * from rentals_may;

-- 3) Create a table rentals_june to store the data from rental table with information for the month of June.
create table rentals_june (
`rental_id` int UNIQUE NOT NULL,
`rental_date` datetime,
`inventory_id` mediumint unsigned,
`customer_id` smallint unsigned,
`return_date` datetime,
`staff_id` tinyint unsigned,
`last_update` timestamp,
CONSTRAINT PRIMARY KEY (rental_id));

-- 4) Insert values in the table rentals_june using the table rental, filtering values only for the month of June.
insert into rentals_june
select * from rental
where month(rental_date) = 6;

select * from rentals_june;

-- 5) Check the number of rentals for each customer for May.
select customer_id,count(rental_id) from rentals_may
group by customer_id order by count(rental_id) desc;

-- 6) Check the number of rentals for each customer for June.
select customer_id,count(rental_id) from rentals_june
group by customer_id order by count(rental_id) desc;