-- Lab 2_03 Queries 3

use sakila;

select count(distinct(last_name))
from actor;

select count(distinct(language_id)) from sakila.language;
select count(distinct(language_id)) from sakila.film;

select distinct(language_id), name from sakila.language;

select count(*) from sakila.film
where rating = 'PG-13';

select * from sakila.film
where release_year = '2006'
order by length desc
limit 10;

select substring_index(max(rental_date), ' ', 1) from rental;

select DATEDIFF(substring_index(max(rental_date), ' ', 1), substring_index(min(rental_date), ' ', 1)) as diferencia_dias
from rental;

select * from rental;

select monthname(rental_date), weekday(rental_date) from rental;

select rental_id, rental_date, 
case
when weekday(rental_date) = '1' then 'Workday'
when weekday(rental_date) = '2' then 'Workday'
when weekday(rental_date) = '3' then 'Workday'
when weekday(rental_date) = '4' then 'Workday'
when weekday(rental_date) = '5' then 'Workday'
when weekday(rental_date) = '6' then 'Weekend'
when weekday(rental_date) = '7' then 'Weekend'
else 'NODAY'
end as 'day_type'
from sakila.rental;

select date(max(rental_date))- INTERVAL 30 DAY, date(max(rental_date))
from rental;

select count(*)
from rental
where date(rental_date) between date('2006-01-15') and date('2006-02-14');