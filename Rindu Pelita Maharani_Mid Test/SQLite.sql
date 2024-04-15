/*
SQL2
Given table with 2 columns: buyer and item.
Buyer contains the name of buyer
Item contains the name of item bought
Return the name of items that is neither bought the most, nor bought the least.
*/

CREATE TABLE item_bought (
    buyer TEXT NOT NULL,
    item TEXT NOT NULL
);

INSERT INTO item_bought (buyer, item) VALUES
('A', 'Asus'),
('B', 'Lenovo'),
('C', 'Lenovo'),
('D', 'Acer'),
('E', 'Acer'),
('F', 'Acer');

select * from item_bought

with total as (
  select item, count(*) as total_beli
  from item_bought
  group by item)
  
select item 
from total

where total_beli <> (
  select MIN(total_beli)
  from total)
  
and total_beli <> (
  select max(total_beli)
  from total);