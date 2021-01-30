--Past Employee table
create table PastEmpTable(
empid int,
ename varchar(20),
esal float,
dol datetime default getdate()
)

-- Creat trigger for update record
create trigger trgAfterUpdate on Employee
after update
as 
declare
@empid int,
@ename varchar(20),
@esal float,
@dol datetime
select @empid=inserted.EmpId,@ename=inserted.EmpName,@esal=inserted.Salary from inserted

insert into PastEmpTable(empid,ename,esal,dol) values(@empid,@ename,@esal,@dol)
print 'After update trigger fired on EmpTable' 

--update query
update Employee set Salary=27000
where empid=4

--Employee table
select * from Employee

--PastEmployee table
select * from PastEmpTable