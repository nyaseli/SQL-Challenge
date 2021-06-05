create table Department (
dept_no varchar (10) primary key, 
dept_name varchar (30) 
);

create table Employees (
emp_no int primary key, 
emp_title varchar (10),
birth_date date, 
first_name varchar (30),
last_name varchar (30),
sex varchar (1),
hire_date date	
);

create table dept_emp (
emp_no int, 
dept_no varchar (10),
foreign key (emp_no) references Employees (emp_no),
foreign key (dept_no) references Department (dept_no)	
);

create table dept_manager( 
dept_no varchar (10),
emp_no int,
foreign key (dept_no) references Department (dept_no),
foreign key (emp_no) references Employees (emp_no)
);

create table salaries (
emp_no int,
salary int,	
foreign key (emp_no) references Employees (emp_no)
);

create table titles (
title_id varchar (10) primary key,
title varchar (30)
);

copy Department (
dept_no, dept_name
) from 'C:\Users\nyase\Downloads\departments.csv' 
delimiter ','
csv header;

copy Employees (
emp_no, emp_title, birth_date, first_name, last_name, sex, hire_date
) from 'C:\Users\nyase\Downloads\employees.csv' 
delimiter ','
csv header;

copy dept_emp (
emp_no, dept_no
) from 'C:\Users\nyase\Downloads\dept_emp.csv' 
delimiter ','
csv header;

copy dept_manager (
dept_no, emp_no
) from 'C:\Users\nyase\Downloads\dept_manager.csv' 
delimiter ','
csv header;

copy salaries (
emp_no, salary
) from 'C:\Users\nyase\Downloads\salaries.csv' 
delimiter ','
csv header;

copy titles (
title_id, title
) from 'C:\Users\nyase\Downloads\titles.csv' 
delimiter ','
csv header;


