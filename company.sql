create database xyz_company;
use xyz_company;
drop table employee_info;
 create table employee_info(
 employee_id int primary key ,
 employee_name varchar(60),
 employee_salary int not null);
 insert into employee_info
 (employee_id ,employee_name,employee_salary)
 values
 (101,"john",100000),
 (102,"ana",500000),
 (103,"cana",500000),
 (104,"keny",250000);
 alter table employee_info
 change column employee_id id int  ;
  drop table employee_info;
 select * from employee_info;
 
 create table employee_dep(
  employee_id int,
 foreign key (employee_id ) references employee_info(id) 
  on delete cascade
 on update cascade,
 employee_depname varchar(60)

 );
 insert into employee_dep
 (employee_id ,employee_depname)
 values
 (101,"software"),
 (102,"hardware"),
 (103,"management"),
 (104,"presentation");
  select * from employee_dep;
 drop table employee_dep;
 
 
 
  select * from employee_info where employee_salary<300000 and employee_name="john";
  select * from employee_dep limit 2;
  
  select * from employee_dep
  order by employee_depname desc;
  
 select avg(employee_salary) from employee_info;
 select employee_id from employee_dep
 group by employee_id;
 
 select employee_id from employee_dep
 group by employee_id
 having employee_id >101;
 
 
 select employee_id from employee_dep
group by employee_id
having employee_id >101
 order by employee_id desc;
 
 alter table employee_info
 add column grade int ;
 
 
 update employee_info
set grade = 7
where id= 101;


update employee_info
set grade = 6
where id= 102;

update employee_info
set grade = 1
where id= 103;

update employee_info
set grade = 1
where id= 104
;
 
  select * from employee_info;
  
  set sql_safe_updates=0;


alter table employee_dep
 add column grade int ;
 
 update employee_dep
set grade = 3
where employee_id= 101;

update employee_dep
set grade = 5
where employee_id= 102;

update employee_dep
set grade = 4
where employee_id= 103;

update employee_dep
set grade = 1
where employee_id= 104
;

select * from employee_dep;
 


 select *from employee_info
 inner join employee_dep
 on employee_info.grade=employee_dep.grade;
 
  select *from employee_info
 left join employee_dep
 on employee_info.grade=employee_dep.grade;
 
  select *from employee_info
 right join employee_dep
 on employee_info.grade=employee_dep.grade;
 
  select *from employee_info
 left join employee_dep
 on employee_info.grade=employee_dep.grade
 union
 select *from employee_info
 right join employee_dep
 on employee_info.grade=employee_dep.grade;
 