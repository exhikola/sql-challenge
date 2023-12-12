CREATE TABLE departments (
    dept_no VARCHAR(255) PRIMARY KEY NOT NULL,
    dept_name VARCHAR(255) NOT NULL
);

CREATE TABLE dep_emp (
    emp_no VARCHAR(255) NOT NULL,
    dept_no VARCHAR(255) NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    PRIMARY KEY (emp_no, dept_no)
);
CREATE TABLE dep_manager (
    emp_no VARCHAR(255) NOT NULL,
    dept_no VARCHAR(255) NOT NULL
);

CREATE TABLE employees (
    emp_no VARCHAR(255) PRIMARY KEY NOT NULL,
    emp_title_id VARCHAR(255),
    birth_date DATE,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR(30),
    hire_date DATE
);

CREATE TABLE salary (
    emp_no VARCHAR(255),
    salary INT,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles (
    title_id VARCHAR(255) PRIMARY KEY NOT NULL,
    title VARCHAR(255)
);

Select * from departments
Select * from dep_emp
Select * from dep_manager
Select * from employees
Select * from salary
Select * from titles