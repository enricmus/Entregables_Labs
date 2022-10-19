-- Lab SQL Queries 7

use sakila;

select first_name, last_name from actor;

select first_name, last_name, count(last_name) as num_lastname
from actor
group by last_name
having num_lastname < 2;

select last_name, count(last_name) as num_lastname
from actor
group by last_name
having num_lastname > 1
order by last_name;

select * from rental;

select staff_id, count(*) as num_rentals
from rental
group by staff_id
order by staff_id;

select * from film;

select release_year, count(*) as num_release_per_year
from film
group by release_year;

select rating, count(*) as num_ratings
from film
group by rating
order by rating;

select rating, count(*) as num_ratings, round(avg(length),2) as mean
from film
group by rating
order by rating;

select rating, count(*) as num_ratings, round(avg(length),2) as mean
from film
group by rating
having mean > 120
order by rating;

