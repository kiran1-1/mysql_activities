select* from turbine_data

///////////////////////////////

select bin(157)

///////////////////////////////

select char(65);

///////////////////////////////

select concat('hello','world')

///////////////////////////////

select lcase("HELLO WORLD")


//////////////////////////////

select length("hello world")

////////////////////////////

select *from turbine_data where Farm like 'a%'

////////////////////////////

select *from turbine_data where Farm not like 'a%'

////////////////////////////

select position("w" IN "hello world")

//////////////////////////////

select replace('hello world','w','z')

//////////////////////////////

select substring('hello world',1,5)

////////////////////////////////

select ucase('hello world')

//////////////////////////////

select strcmp('hello world', 'hello world')




CREATE TABLE myltts.countries (
  country_id INT,
  country_name VARCHAR(45) ,
  region_id INT,
  check (country_name ="usa" or country_name = "india" or country_name = "Russia")
  );
  insert into countries (country_id,country_name,region_id)
  values (1,"india",123);

Select * from countries;
////////////////////////////////////////////////////////////////////




CREATE TABLE myltts.Employee (
  emp_id INT not null,
  emp_name VARCHAR(45) ,
  emp_address VARCHAR(45) ,
  primary key(emp_id)
  );
  
insert into Employee (emp_id,emp_name,emp_address)
  values (1,"kiran","bobbili");
  
  
  insert into Employee (emp_id,emp_name,emp_address)
  values (1,"pavan","parvathipuram");
  
select * from employee;

insert into Employee (emp_id,emp_name,emp_address)
  values (2,"kiran2","bobbili2"),
		(3,"pavan","parvathipuram"),
        (4,"ajay","vizag"),
        (5,"praveen","vijaywada");
        
	select* from Employee;
    
    /////////////////////////////////////////////////
    create table myltts.Employee
    (
      emp_id int not null auto_increment primary key,
      emp_name varchar(255) not null,
      emp_address varchar(255) not null
    );
     insert into employee(emp_name ,emp_address) 
     values("kiran","bobbili");
     
     select * from employee;
     
	insert into employee(emp_name ,emp_address) 
     values("pavan","parvathipuram");
     /////////////////////////////////////////////////
     
     create table myltts.employee
     (
      emp_id int not null,
      emp_name varchar(255) not null,
      emp_address varchar(255)not null,
      emp_adhar int not null,
      constraint pk_employee primary key (emp_id , emp_adhar)
      );
     select * from employee;
     ////////////////////////////////////////
     
      create table myltts.engineer
      (
        engineer_id int not null,
        engineer_firstname varchar(255) not null,
        engineer_lastname varchar(255) not null,
        engineer_salary int not null
        );
     
      insert into engineer(engineer_id,engineer_firstname,engineer_lastname,engineer_salary)
      values(1,"kiran","gorijala",40000),
             (2,"pavan","marpina",50000),
             (3,"rohit","kumar",30000),
            (4,"saideep","taddi",35000);
            
            select * from engineer;
   --     insert into engineer(engineer_id,engineer_firstname,engineer_lastname,engineer_salary)
--       values(2,"pavan","marpina",50000);
--       
--       insert into engineer(engineer_id,engineer_firstname,engineer_lastname,engineer_salary)
--       values(3,"rohit","kumar",30000),
--             (4,"saideep","taddi",35000);
--      
     select * from engineer;
     //////////////////////////////
     
     select engineer_id,engineer_firstname,engineer_lastname ,(engineer_salary*15)/100 as PF
     from engineer;
       select * from engineer;
     
     /////////////////////////////////////////////////////////////////////////
     
     select avg(engineer_salary) as average_salary,
     count(engineer_id) as total_no_of_engineers
     from engineer;
     
     
     //////////////////////////////////////////////////////////////////////////////////
     
     select min(engineer_salary) as lowest_salary, 
     max(engineer_salary) as highest_salary,
     sum(engineer_salary),
     avg(engineer_salary)as average_salary
     from engineer;
     
     
     ////////////////////////////////////////////////
     
     select engineer_firstname,engineer_lastname,engineer_salary
     from engineer,  
     (select engineer_salary as engineer_kumar_salary
     from engineer 
     where engineer_lastname ="kumar")as kumar_salary
     where engineer.engineer_salary > kumar_salary.engineer_kumar_salary;
     
     
     
     //////////////////////////////////////////////////////////////////////////
     
     
     select *
     from engineer
     where engineer_salary > (select avg(engineer_salary) from engineer);
     
     
     