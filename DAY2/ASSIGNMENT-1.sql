use misbahdb;
create table CUSTOMER(
cust_id varchar(5),
Fname varchar(15),
Lname varchar(15),
Area char(2),
Phone bigint(10),
DOB varchar(15),
Payment double(6,2));

insert into CUSTOMER values
('A01','Ivan','ross','SA',612467,'15-jan-86',800.50),
('A02','Vandana','Ray','MU',5560379,'20-dec-87',1000.75),
('A03','Pramada','Jauguste','DA',4560389,'25-jul-67',500.00),
('A04','Basu','Navindi','BA',612501,'30-feb-56',860.00),
('A05','Ravi','Shridhar','NA',null,'15-feb-89',500.50),
('A06','Rukmini','Aiyer','GH',5125274,'23-jul-87',1500.50);
#2 Display the structure of the table you have created
desc customer;  #desc for description of the table
#3 Display the data of the table you have created
select * from customer;
#4 insert a row which will aceept your system date
alter table customer ADD CurrentDate varchar(15) after payment;
UPDATE CUSTOMER SET  CurrentDate=curdate();
#6 update the phonone number of customer A02 ans A04
update CUSTOMER set Phone='12345678' where  cust_id='A02'; 
update CUSTOMER set Phone='987654321' where  cust_id='A04' ; 
#Display the updated table
select* from Customer;
#7 update dob of A03 and A05
update CUSTOMER set DOB='12-mar=99' where cust_id='A03'; 
update CUSTOMER set DOB='17-may=88' where cust_id='A05';
# 8 display the updated table 
select* from customer;
#9 Delete two rows from the table for customer A01 and A05
delete from CUSTOMER where cust_id='A01';
delete from CUSTOMER where cust_id='A05';
select* from Customer;
#10 delete all row from table
truncate CUSTOMER;
#11 insert 5 records to your own wish
insert into CUSTOMER values
('A01','Ivan','ross','SA',612467,'15-jan-86',800.50),
('A02','Vandana','Ray','MU',5560379,'20-dec-87',1000.75),
('A03','Pramada','Jauguste','DA',4560389,'25-jul-67',500.00),
('A04','Basu','Navindi','BA',612501,'30-feb-56',860.00),
('A05','Ravi','Shridhar','NA',null,'15-feb-89',500.50),
('A06','Rukmini','Aiyer','GH',5125274,'23-jul-87',1500.50);
#12 update one record based on your own wish
update customer set fname='Misbah',lname='Chowdhury' where cust_id='A01';
#13 delete any record from the table based on particular criteria
delete from customer where cust_id='A01';

