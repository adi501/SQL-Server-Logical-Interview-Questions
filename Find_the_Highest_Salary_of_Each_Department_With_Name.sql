

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