-- lesson 2 07

select round(avg(amount),2) as "Avg Amount", round(avg(payments),2) as "Avg Payment", status
from bank.loan
group by status
order by status;

select round(avg(amount),2) - round(avg(payments),2) as "Avg Balance", status
from bank.loan
group by status
order by status;

select round(avg(amount),2) as Average, k_symbol from bank.order
group by k_symbol
order by Average asc;


select round(avg(amount),2) as Average, k_symbol from bank.order
where k_symbol<> ' '
group by k_symbol
order by Average asc;

select round(avg(amount),2) as Average, k_symbol from bank.order
where not k_symbol = ' '
group by k_symbol
order by Average asc;

-- Activity 1

select type as card_type, count(*) as num_issued
from bank.card
group by type
order by num_issued desc;

select district_id, count(*) as num_customers
from bank.client
group by district_id
order by num_customers desc;

select type, round(avg(amount),2) as avg_amount
from bank.trans
group by type
order by avg_amount desc;

-- Lesson 2

select round(avg(amount),2) - round(avg(payments),2) as "Avg Balance", status, duration
from bank.loan
group by status, duration
order by status, duration;

select round(avg(amount),2) - round(avg(payments),2) as "Avg Balance", status, duration
from bank.loan
group by status, duration
order by duration, status;

select type, operation, k_symbol, round(avg(balance),2)
from bank.trans
group by type, operation, k_symbol;

select type, operation, k_symbol, round(avg(balance),2)
from bank.trans
group by type, operation, k_symbol
order by type, operation, k_symbol;

-- Activity 2

select type, operation, k_symbol, round(avg(balance),2)
from bank.trans
where k_symbol <> ' ' and k_symbol <> ''
group by type, operation, k_symbol
order by type, operation, k_symbol;

-- lesson 3

select type, operation, k_symbol, round(avg(balance),2) as Average
from bank.trans
where k_symbol <> '' and k_symbol <> ' ' and  operation <> ''
group by type, operation, k_symbol
having Average > 30000
order by type, operation, k_symbol;

select round(avg(amount),2) - round(avg(payments),2) as Avg_Balance, status, duration
from bank.loan
group by status, duration
having Avg_Balance > 100000
order by duration, status;

-- Activity 3
use bank;
select * from client;

select district_id, count(*) num_customers
from bank.client
group by district_id
having num_customers > 100
order by num_customers desc;

select * from trans;

select type, operation, round(avg(amount),2) as media
from bank.trans
group by type, operation
having media > 10000
order by media asc;

select type, operation, round(avg(amount),2) as avg_amount
from bank.trans
group by type, operation
having avg_amount>10000
order by avg_amount desc;

-- lesson 4 window functions

select loan_id, account_id, amount, payments, duration, amount-payments as "Balance",
avg(amount-payments) over (partition by duration) as Avg_Balance
from bank.loan
where amount > 100000
order by duration, balance desc;