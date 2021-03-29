

--Display all tables
Select* from Customer
Select* from Embloyee
Select* from Product
Select* from Pruchases
Select* from SalesRevenues
Select* from Regestiration

--sorted table by alphabet
Select * from Embloyee
order by FirstName, LastName desc 

--search for a name
select FirstName,LastName from Customer
where FirstName Like'Th%'

--search for a name
select FirstName,LastName from Customer
where FirstName in ('Klara')

--display a colummn with condition
select price from Product
where Price between 10 and 100

--display a colummn with condition
select price from Product
where Price not between 10 and 100

-- using if condtional sentence
if(select min(price)from Product)<20
print'Minimum is less than 20'
else PRINT 'MoreTHAN 20'

-- using if condtional sentence
if(select Max(price)from Product)>400
print'Max is more than 400KR'
else PRINT 'Less THAN 400KR'

--modification of values
update Embloyee
set LastName = 'Martin'
where EmbloyeeID = 5

--ADD new values
 insert into Embloyee
 values 
 ('Hasi','Ulf',19890201-6584,0725698456,'Hasi45@hotmail.com','kommetorget56')

 -- delete values by using condition
 delete from Embloyee
 where EmbloyeeID = 6

 --modification of values by using Case condition
select  EmbloyeeID,
Availability = case PersonNumber
when  '3699' then '8510096589'
when'3696' then '7710096698'
when  '192' then '9100598654'
when  '205' then '8800592345'
Else  '6102284536'
End
From Embloyee

--Concatition with column
SELECT CONCAT(Name,' ',Price,'kr') Sales FROM Product

-- Join different table and changing columns names
select FirstName AS'Cashier', Name as 'ProductName', Price
from Embloyee
Join Product
on EmbloyeeID = ProductID

--add new values
insert into Pruchases
values 
(2,4,169,GETDATE()),
(2,3,175,GETDATE()),
(2,5,27,GETDATE()),
(2,1,55,GETDATE())

--Aggregate functions 
select * from Pruchases
where CustID =2
select min(TheTotallBuyAmount)Minimum from Pruchases
where CustID =2
select max(TheTotallBuyAmount)maximum from Pruchases
where CustID =2
select Count(TheTotallBuyAmount)Count from Pruchases
where CustID =2
select AVG(TheTotallBuyAmount)Average from Pruchases
where CustID =2
select SUM(TheTotallBuyAmount) Total from Pruchases
where CustID =2

-- display Pruchases table first 
select * from Pruchases

-- group by
select CustID, SUM(TheTotallBuyAmount) Total
from Pruchases
where TheTotallBuyAmount>20
group by CustID

-- group by with having
select CustID, SUM(TheTotallBuyAmount) Total
from Pruchases
where TheTotallBuyAmount>20
group by CustID
Having SUM(TheTotallBuyAmount)<600 and SUM(TheTotallBuyAmount)>50 

--INNER join

select Name,TheTotallBuyAmount
from Product 
join Pruchases
On ProductID = ProID
 
-- OUT Left join
select Name,TheTotallBuyAmount
from Product 
OUT LEFT join Pruchases
On ProductID = ProID


--OUT RIGHT JOIN
select Name,TheTotallBuyAmount
from Product 
OUT RIGHT join Pruchases
On ProductID = ProID























