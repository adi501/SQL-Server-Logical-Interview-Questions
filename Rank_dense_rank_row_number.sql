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

