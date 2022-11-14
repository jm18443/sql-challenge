CREATE TABLE departments(
dept_no varchar(200) NOT NULL PRIMARY KEY,
dept_name varchar(200)
);

CREATE TABLE dept_emp(
emp_no int NOT NULL,
dept_no varchar(200),
FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);



CREATE TABLE dept_manager(
dept_no varchar(200) NOT NULL,
emp_no int
);

CREATE TABLE employees(
emp_no int NOT NULL PRIMARY KEY,
emp_title varchar(200),
birth_date date,
first_name varchar(200),
last_name varchar(200),
sex varchar(200),
hire_date date
);

CREATE TABLE salaries(
emp_no int NOT NULL PRIMARY KEY ,
salary int,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles(
title_id varchar(200) NOT NULL PRIMARY KEY ,
title varchar(200)
);
