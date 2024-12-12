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
