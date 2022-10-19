use bank;

select * from card;

select card_id, type, convert(substring_index(issued, ' ', 1), datetime) 
from card
where type = 'gold';

select card_id, date_format(convert(substring_index(issued, ' ', 1), date), '%Y') as year_issued
from card
where type = 'gold';

select min(date_format(convert(substring_index(issued, ' ', 1), date), '%Y')) as year_issued
from card
where type = 'gold';