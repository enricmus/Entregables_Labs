use bank;

select "Hello World";

select 2+2;

select DISTINCT type
from bank.card;

select district.A2 as district_name, district.A3 as region_name 
from bank
order by district_name
limit 30;

select * from bank.loan
where status in('B', 'b') and amount > 1000000;

select * from bank.loan
limit 10;

select * from bank.account
order by account_id desc
limit 10;

select *
from bank.loan
where status in ('B', 'D');

select *
from bank.loan
where status = 'B' or (status = 'D' and amount > 200000);

select *
from bank.order
where not k_symbol = 'SIPO' and not amount < 1000;

-- actividad 3 2_02

use bank;
select * from card
where issued > 980000 and type = 'junior';

select * from bank.trans
where type = 'VYDAJ' and (operation = 'VKLAD' or operation = 'VYBER')
limit 10;

select loan_id, account_id, (amount - payments) as debt
from bank.loan
where status = 'B' and (amount - payments) > 1000;

select count(order_id) from bank.order;

select max(amount) from bank.order;

select ceiling(avg(amount)) from bank.order;

select length('coche');

select *, length(k_symbol) as 'Symbol_length' from bank.order;
select *, concat(order_id, account_id) as 'concat' from bank.order;

select *, format(amount, 2) from bank.loan;
select *, lower(A2), upper(A3) from bank.district;

select A2, left(A2, 5), A3, ltrim(A3) from bank.district;

select substring_index(issued, ' ', 1) from bank.card;

