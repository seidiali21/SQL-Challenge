create table titles(
	title_id varchar not null,
	title varchar not null,
    primary key (title_id),
    foreign KEY (title_id) references employees (emp_title_id)

);
select * from titles

create table departments (
	dept_no varchar not null,
	dept_name varchar not null,
	primary key (dept_no)
);
select * from departments

CREATE TABLE employees(
    emp_no          INT PRIMARY KEY,
    emp_title_id    VARCHAR(5)      NOT NULL,
    birth_date      DATE            NOT NULL,
    first_name      VARCHAR(16)     NOT NULL,
    last_name       VARCHAR(16)     NOT NULL,
    sex             VARCHAR(1)      NOT NULL,
    hired_date      DATE            NOT NULL,
    foreign KEY emp_title_id references titles (title_id);
);
select * from employees

create table dept_emp(
	emp_no int not null,
	dept_no varchar not null,
	foreign key(emp_no) references employees(emp_no),
	foreign key(dept_no) references departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);
select * from dept_emp

create table dept_manager(
	dept_no varchar not null,
	emp_no int not null,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no),	
	PRIMARY KEY (dept_no, emp_no)
);
select * from dept_manager

create table Salaries(
	emp_no int not null,
	salary int not null,
	foreign key (emp_no) references employees(emp_no),
    PRIMARY KEY (emp_no)
); 
select * from Salaries

