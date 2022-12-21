use misbahdb;
create table Employee(
id int primary key,  # Create table  table_name
Ename varchar(10) not null,
Ephone bigint(11) not null unique,
Eaddr varchar(50) not null ,
Edept varchar(10),
Esalary double);
insert into Employee values
(1,'Bisnpriya',233434444,'mumbai','IT',10000.800);
insert into Employee values
(2,'Suchitra',36254647448,'kolkata','IT',20000.5),
(3,'Shifa',897665344,'pune','a/c',15000.5),
(4,'Nisha',6789034444,'Mumbai','mgr',35000.5),
(5,'Elina',90975444,'Kolkata','A/c',10000.5);
select* from Employee where Edept='IT';
select * from Employee where Eaddr='Kolkata' and Esalary=10000.5;  #And display results if bothe condition is satified or tue
select * from Employee where Eaddr='Mumbai' or Esalary=10000.3;   #Or display if either one condition is satisfied
select * from Employee where Edept!='IT';   #  !=  display the dept which does not have IT
select* from Employee where Ename like 'E%';  #check start with letter E
select* from Employee where Ename like '%a';   #Check end with the letter alter
select* from Employee where Ename like '%f%';   #check in between flush
select* from Employee where Ename like 'N%a';   #chechk start and end both start with n and end with a
select* from Employee where Eaddr like 'pu_e';  #Check the missing letter
select* from Employee where Edept like 'M_R';  #Check missing letter
select id,eaddr,Ename from Employee;
select * from Employee where id=2;
select Ename,Esalary,ESalary+300 as 'Increased_salary' from Employee;
alter table Employee add comm_pct int after Esalary;
update Employee set Comm_pact = 20 where id = 1;
update Employee set Comm_pact = 15 where id = 2;
update Employee set Comm_pact = 10 where id = 3;
update Employee set Comm_pact = 15 where id = 4;
update Employee set Comm_pact = 25 where id = 5;
#as (add)
select Ename,Esalary,Esalary + 300 as 'Increased_Salary' from Employee;
select Ename,Esalary,Esalary,Comm_pact + 100 as 'Annual_Compensation' from Employee;
select Comm_pact from Employee;
#greater than
select id,Esalary from Employee where Esalary>1500;
#between
select Ename, Esalary from Employee where Esalary between 2000 and 5000;
select * from Employee Where  Esalary = 1000.50 or 5000.50;


