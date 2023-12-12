# sql-challenge
Table Creation:
Tables are created for "departments," "dep_emp" (department employees), "dep_manager," "employees," "salary," and "titles."
Various queries are executed to gather specific information:
Employee details with their salary.
Employees hired in 1986.
Managers of each department.
Employee details along with their department information.
Employees named Hercules with last names starting with 'B'.
Employees in the Sales department.
Employees in the Sales and Development departments.
Frequency counts of employee last names.

ERD Datagram
_____________
Departments         |   Department_Employee 
   
dept_no (PK)        |   emp_no (PK, FK)     
dept_name           |   dept_no (PK, FK)      
___________________________________________   
Department_Manager  |   Employees          
  
dept_no (PK, FK)    |   emp_no (PK)
emp_no (PK, FK)     |   birth_date
                    |   first_name          
                    |   last_name           
                    |   gender              
                    |   hire_date            
____________________________________________
Salaries           |    Titles               
emp_no (PK, FK)    |    emp_no (PK, FK)    
salary             |     title  
                                  
                       
