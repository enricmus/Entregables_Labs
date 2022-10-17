use sakila;

SELECT * FROM customer, film, actor;

select title from film;

select sf.name as language
from sakila.language as sf;

select count(*) from store;

select count(*) from staff;

select first_name from staff;