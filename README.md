**Left Outer Join Interview Question:**

```create table tablea(Id int)  
create table tableb(Id int)

insert into tablea values(1)  
insert into tablea values(1)   
insert into tablea values(1)    
insert into tablea values(2)    
insert into tablea values(2)    
insert into tablea values(3)    
insert into tablea values(4)   

insert into tableb values(1)    
insert into tableb values(1)    
insert into tableb values(2)    
insert into tableb values(2)    
insert into tableb values(4)    

select * from tablea    
select * from tableb    
select * from tablea left outer join tableb on tablea.Id =tableb.Id
```
![image](https://github.com/user-attachments/assets/ca498800-e041-4cc7-bf0a-691e9bbeaeb6)


**Self join in sql example (employee manager)**
```
create table tbl_EMP(Id int , Name varchar(10),Manager int)

insert into tbl_EMP values(1,'adi',0)
insert into tbl_EMP values(2,'anil',1)
insert into tbl_EMP values(3,'vani',2)
insert into tbl_EMP values(4,'abc',null)

select * from tbl_EMP

select E.Id,E.Name,M.Name as Manage from tbl_EMP E left outer join tbl_EMP M on E.Manager=M.Id

--select E.Id,E.Name,M.Name as Manage from tbl_EMP E  join tbl_EMP M on E.Manager=M.Id

--select E.Id,E.Name,M.Name as Manage from tbl_EMP E , tbl_EMP M where E.Manager=M.Id
```
![image](https://github.com/user-attachments/assets/085d8519-02e8-4226-8fcb-dd9bb10bd353)

**Rank, Dense rank and Row Number in SQL Server**
```
create table tbl_EXP1(Id int)

insert into tbl_EXP1 values(1)
insert into tbl_EXP1 values(1)
insert into tbl_EXP1 values(2)
insert into tbl_EXP1 values(3)

select * from tbl_EXP1

select Id, 
row_number() over(order by Id) as 'Row Number',
RANK() over(order by Id) 'Rank',
dense_rank() over(order by Id) 'Dense Rank' from tbl_EXP1
```
![image](https://github.com/user-attachments/assets/646aff1c-6187-4abd-b2e5-ffc92257a8d0)

**Inner Join, Cross Join and Full Outer Join with same data in both tables**

```
create table tbl1(Id int)
create table tbl2(Id int)

insert into tbl1 values(1)
insert into tbl1 values(1)
insert into tbl1 values(1)

insert into tbl2 values(1)
insert into tbl2 values(1)
insert into tbl2 values(1)

select * from tbl1

select * from tbl2

select t1.Id,t2.Id from tbl1 t1 inner join tbl2 t2 on t1.Id=t2.Id

select t1.Id,t2.Id from tbl1 t1 full outer join tbl2 t2 on t1.Id=t2.Id

select t1.Id,t2.Id from tbl1 t1 cross join tbl2 t2 --on t1.Id=t2.Id
```
![WhatsApp Image 2024-12-11 at 20 04 31_c9179935](https://github.com/user-attachments/assets/52c3c6ba-170d-4fad-b04c-6c070aeff356)

**Find the Highest Salary of Each Department with EMP Name**
```


--create table Tbl_EMP(Id int identity(1,1),Name varchar(20),DepName varchar(20),Sal int)

insert into Tbl_EMP values('A','IT',2000)
insert into Tbl_EMP values('B','IT',3000)
insert into Tbl_EMP values('C','HR',5000)
insert into Tbl_EMP values('D','HR',7000)
insert into Tbl_EMP values('E','BPO',2000)
insert into Tbl_EMP values('F','IT',9000)
insert into Tbl_EMP values('G','IT',9000)

select * from Tbl_EMP order by DepName ,sal desc
select * from (select *,row_number() over(partition by DepName order by sal desc) as rowNum from tbl_emp) as t where t.rowNum in(1)


--select * from (select *,rank() over(partition by DepName order by sal desc) as rowNum from tbl_emp) as t where t.rowNum in(3)
--select * from (select *,Dense_rank() over(partition by DepName order by sal desc) as rowNum from tbl_emp) as t where t.rowNum in(3)

--select *,row_number() over(partition by DepName order by sal desc) as rowNum from tbl_emp
--select *,rank() over(partition by DepName order by sal desc) as rowNum from tbl_emp
--select *,Dense_rank() over(partition by DepName order by sal desc) as rowNum from tbl_emp
```
![image](https://github.com/user-attachments/assets/19d40745-06ea-42cc-8e48-05636f3eae98)
