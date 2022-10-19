use bank;

select isnull(amount) from trans;
where isnull(amount) = 1;

select * from bank.trans
where amount is null;

select sum(k_symbol = ' ') as k_symbol_empty, sum(not k_symbol = ' ') as k_symbol_non_empty
from bank.trans
where amount is not null;

