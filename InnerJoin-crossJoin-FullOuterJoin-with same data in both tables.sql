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