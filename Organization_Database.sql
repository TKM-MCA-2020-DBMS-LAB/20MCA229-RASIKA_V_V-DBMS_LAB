create database Organization;
use Organization;
create table department(dept_no int primary key,dept_name varchar(20),location varchar(30));
create table employee(emp_no int primary key,emp_name varchar(20) not null,DOB date,address varchar(30),date_of_join date,mobile_no bigint,dept_no int,foreign key(dept_no) references department(dept_no),salary float);
insert into department values(101,"Rasika","Mumbai");
insert into department values(102,"Aiswarya","Kannur");
insert into department values(103,"Devika","Kochi");
select * from department;

insert into employee values(1,"Raajitha",'1996-04-20',"Nadathattumal house",'2020-01-10',9785439910,101,10000);
insert into employee values(2,"Nandana",'2000-05-23',"Nandanam house",'2020-02-11',7012349019,102,8000);
insert into employee values(3,"Aswathi",'1995-06-29',"Kavila house",'2021-01-14',9912120010,103,10000);
select * from employee;
show tables;
alter table employee add column designation varchar(20);
alter table department drop column location;
drop table department,employee;
drop database Organization;

