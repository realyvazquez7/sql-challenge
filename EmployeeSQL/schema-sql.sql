--- create table departments
create table departments (
dept_no varchar(5),
dept_name varchar(30),
primary key(dept_no)

);

--- create table titles
create table titles (
title_id varchar(6),
title varchar (30),
primary key (title_id)

);

--- create table employees
create table employees (
emp_no integer not null,
emp_title_id varchar (6),
birth_date date,
first_name varchar (25),
last_name varchar (25),
sex varchar (1),
hire_date date,
primary key (emp_no),
foreign key (emp_title_id) references
	titles(title_id)

);

--- create table dept_emp
create table dept_emp (
emp_no integer not null,
foreign key (emp_no)references
	employees (emp_no),
dept_no varchar(5),
foreign key (dept_no) references
	departments (dept_no),
primary key (emp_no, dept_no)

);

--- create table dept_manager
create table dept_manager (
dept_no varchar(5),
foreign key (dept_no) references
	departments (dept_no),
emp_no int not null primary key,
foreign key (emp_no) references
	employees(emp_no)
	
);

--- create table salaries
create table salaries (
emp_no int not null primary key,
salary int not null,
foreign key (emp_no) references
	employees(emp_no)

);