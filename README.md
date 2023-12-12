# sql-challenge
# SQL Table Creation and Queries:
#### Tables are created for "departments," "dep_emp" (department employees), "dep_manager," "employees," "salary," and "titles."
#### Various queries are executed to gather specific information:
Employee details with their salary.

Employees hired in 1986.

Managers of each department.

Employee details along with their department information.

Employees named Hercules with last names starting with 'B'.

Employees in the Sales department.

Employees in the Sales and Development departments.

Frequency counts of employee last names.

# ERD Datagram visualise the relation between the tables. Primary and foreign keys.

### Departments Table:
Primary Key (PK): dept_no
Attributes: dept_name
Relationship: One-to-Many with Department_Employee (via dept_no)

### Department_Employee Table:
Composite Primary Key (PK): emp_no, dept_no
Foreign Keys (FK): emp_no references Employees, dept_no references Departments
Relationship: Many-to-Many between Employees and Departments

### Department_Manager Table:
Primary Key (PK): dept_no
Foreign Key (FK): emp_no references Employees
Relationship: One-to-Many with Employees (via emp_no), indicating a manager for each department.

### Employees Table:
Primary Key (PK): emp_no
Attributes: birth_date, first_name, last_name, gender, hire_date
Relationships:
One-to-Many with Department_Employee (via emp_no)
One-to-Many with Department_Manager (via emp_no)
One-to-Many with Salaries (via emp_no)
One-to-Many with Titles (via emp_no)

### Salaries Table:
Primary Key (PK): emp_no
Foreign Key (FK): emp_no references Employees
Relationship: One-to-One with Employees (via emp_no)

### Titles Table:
Primary Key (PK): emp_no
Foreign Key (FK): emp_no references Employees
Relationship: One-to-One with Employees (via emp_no)                                 
In summary, the ERD visualizes the relationships between tables using primary and foreign keys. Arrows indicate the direction of relationships. For example, the Departments table has a one-to-many relationship with the Department_Employee table, and the Department_Employee table establishes a many-to-many relationship between Employees and Departments. This diagram helps illustrate the structure of the database and how different entities are connected.

                       
