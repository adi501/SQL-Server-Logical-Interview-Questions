create table tablea(Id int)
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