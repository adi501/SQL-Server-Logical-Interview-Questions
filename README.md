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
