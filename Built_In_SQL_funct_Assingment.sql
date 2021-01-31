
--Q1)1.	Create a table Product as per the following specifications.
create table Product
(
ProductID int not null primary key identity(1,1),
Descriptions varchar(30) not null unique,
SetQty int not null default 1,
Rate decimal(10,2),
Check(Rate >=51 and Rate<=5000),
check(SetQty=1  Or SetQty=5 Or SetQty=10)
)

--Q2)nsert 20 records in the above Product table

insert into Product values('choclate',10,55.5)
insert into Product values('pizza',10,100.5)
insert into Product values('shoes',5,130.5)
insert into Product values('Crackers',1,1000.5)
insert into Product values('teddy',5,90.5)
insert into Product values('sprite',10,65.5)
insert into Product values('book',5,65.5)
insert into Product values('bootle',5,65.5)
insert into Product values('pen',5,55.5)
insert into Product values('pencil',5,55.5)
insert into Product values('ink',5,55.5)
insert into Product values('charger',1,205.5)
insert into Product values('watch',5,100.5)
insert into Product values('bag',5,100.5)
insert into Product values('t-shirt',5,100.5)
insert into Product values('top',5,99.5)
insert into Product values('sunglasses',1,70.5)
insert into Product values('furniture',1,4000.5)
insert into Product values('cakes',1,500.5)
insert into Product values('cheese',1,100.5)


--tblCustomer table
create table TblCustomer
(
CustomerID varchar(20) not null primary key,
CustomerName varchar(20),
DOB Date,
City varchar(20)
)

select * from TblCustomer

insert into tblCustomer values ('123456', 'David Letterman', '04-Apr-1949', 'Hartford');
insert into tblCustomer values ('123457', 'Barry Sanders', '12-Dec-1967','Detroit');
insert into tblCustomer values ('123458', 'Jean-Luc Picard', '9-Sep-1940', 'San Francisco');
insert into tblCustomer values ('123459', 'Jerry Seinfeld', '23-Nov-1965','New York City');
insert into tblCustomer values ('123460', 'Fox Mulder', '05-Nov-1962', 'Langley');
insert into tblCustomer values ('123461', 'Bruce Springsteen', '29-Dec-1960','Camden');
insert into tblCustomer values ('123462', 'Barry Sanders', '05-Aug-1974','Martha''s Vineyard');
insert into tblCustomer values ('123463', 'Benjamin Sisko', '23-Nov-1955','San Francisco');
insert into tblCustomer values ('123464', 'Barry Sanders', '19-Mar-1966','Langley');
insert into tblCustomer values ('123465', 'Martha Vineyard', '19-Mar-1963','Martha''s Vineyard');



use WFA3DotNet

select * from TblCustomer

select * from Product

--SQL BUILT-IN functions

--1.Average
select Avg(Rate) as AverageRate 
from Product

--2.Sum
select SetQty,SUM(Setqty) as TotalQuantity
from product
group by SetQty

--3.Max
select Max(Rate) as MaxRateofProduct
from product

--4.Min
select Min(rate) as MinRateofProduct
from product

--5.count
select count(Descriptions) as ProductCount
from product

--6.Distinct
select distinct(SetQty)
from Product

--7.RoundOf
select Descriptions, ROUND(Rate,1) as RoundValue
from Product

--8.Square
select Descriptions, SQUARE(setQty) as doubleQty
from Product

--9.CEILING == equal or greater value
select Descriptions, CEILING(Rate) as ProductRate
from Product

--10.Floor == equal or less then
select Descriptions, Floor(Rate) as ProductRate
from Product

--11.Limit
select top 10 * 
from Product

--12.Substring
select SUBSTRING(Descriptions,1,4) as ShortName
from Product

--13.Upper
select Descriptions, Upper(Descriptions) as ProductName
from Product

--14.Lower
select LOWER(Descriptions) as ProductName
from Product

--15.Concate
select CONCAT(ProductId,Descriptions) as NewProdId
from Product

--16.Year
select *
from TblCustomer
where YEAR(DOB) >= 1960

--17.Month
select *
from TblCustomer
where Month(DOB) >= 4

--18.Day
select *
from TblCustomer
where Day(DOB) >= 10

--19.GETDATe
select GETDATE() as TodaysDate

--20.CURRENT TIMESPam == return date along with time
select CURRENT_TIMESTAMP 

--21.System date
select SYSDATETIME() as SystemDate

--22.DatePart == show only particular part of date
select DATEPART(YEAR, DOB) as YearfromDate
from TblCustomer

--23.IS NOT NULL
select * 
from Product
where Rate is Not Null

--24.IS NULL
select * 
from Product
where Rate is Null

--25.IN
select * from Product
where Descriptions IN ('pizza','book')

--26.NOTIN
select * from Product
where Descriptions NOT IN ('pizza','book')

--27.Between
select * from TblCustomer
where DOB between '29-Dec-1960' AND '19-Mar-1963'

--28.Replace
select REPLACE('Fox Mulder','F','f') as ChangeLetter

--29.UNICODE ==return integer value
select Descriptions,Rate,UNICODE(Rate)
from Product

--30.QUOTENAME == return Unicode string with delimiters added to make the string
select QUOTENAME(Descriptions) as NewFormate
from Product

--31.LEN
select Descriptions, LEN(Descriptions) as totalLen
from Product
