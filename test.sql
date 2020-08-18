select * from employee
create table Departments (
	dept_no varchar not null,
	dept_name varchar not null,
	primary key (dept_no)
);
create table Department_Employees(
	emp_no int not null,
	dep_no varchar not null,
	from_date date not null,
	to_date date not null,
	foreign key(emp_no) references employee(emp_no)
	
);

create table Department_Manager(
	dept_no varchar not null,
	emp_no int not null,
	from_date date not null, 
	to_date date not null,
	foreign key (emp_no) references employee(emp_no),
	foreign key (dept_no) references Departments(dept_no)	
);
create table Salaries(
	emp_no int not null,
	salary int not null,
	from_date date not null,
	to_date date not null,
	foreign key (emp_no) references employee(emp_no)
); 
create table Titles(
	emp_no int not null,
	title varchar not null,
	from_date date not null,
	to_date date not null,
	foreign key (emp_no) references employee(emp_no)
);
select * from titles