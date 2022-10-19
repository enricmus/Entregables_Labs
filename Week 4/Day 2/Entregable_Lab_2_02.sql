use sakila;

select * from actor
where first_name = 'Scarlett';

select * from actor
where last_name = 'Johansson';

select count(*) from rental;

select count(*) from film;

select max(rental_duration) from film;
select min(rental_duration) from film;

select max(length) as max_duration from film;
select min(length) as min_duration from film;

select avg(length) from film;

select concat(floor(length/60), 'h', (length%60),' m') from film;

select concat(floor(avg(length)/60), ' h ', (avg(length)%60),' m') from film;

select * from film
where length > 180;

select concat(lower(first_name),'.',lower(last_name),'@sakilacustomer.org') from actor;

SELECT CONCAT(UPPER(LEFT(LOWER(first_name), 1)),LOWER(SUBSTRING(LOWER(first_name),2, LENGTH(first_name))), ' ',last_name, ' - ', LOWER(email) ) as formatted_email from customer;

select max(length(title)) from film;
