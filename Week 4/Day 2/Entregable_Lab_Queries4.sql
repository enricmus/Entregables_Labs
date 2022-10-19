-- Lesson 2 04

select distinct type from bank.card;

select * from bank.trans
where convert(date, date) between '1993-01-01' and '1993-01-15'
limit 10;

select count(*) from bank.loan
where status in ('C', 'D');

select distinct a2 from bank.district
where a2 regexp '^k';

select distinct a2 from bank.district
where a2 regexp 'k$';

-- con $ es la letra al final, cuando se usa regexp

-- Lab SQL Queries 4

use sakila;

select rating from film;

select release_year from film;

select title from sakila.film
where title regexp 'ARMAGEDDON';

select title from sakila.film
where title regexp 'APOLLO';

select title from sakila.film
where title regexp 'APOLLO$';

select title from sakila.film
where title regexp '^APOLLO';


select title from sakila.film 
where title regexp 'DATE';

select title from film
order by length(title)
limit 10;

select title from sakila.film
order by length
limit 10;

select count(special_features) from film 
where special_features like '%Behind the Scenes%';

select release_year, title from film
order by release_year, title asc;

