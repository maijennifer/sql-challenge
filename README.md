# sql-challenge
departments
-
dept_no char(4) PK
dept_name varchar(30)

dept_manager
-
dept_no char(4) FK >- departments.dept_no
emp_no int PK FK - employees.emp_no

dept_emp
-
emp_no int PK FK >- employees.emp_no
dept_no char(4) PK FK >- departments.dept_no

titles
-
title_id char(5) PK
title varchar(30)

employees
-
emp_no int PK
title_id char(5) FK >- titles.title_id
birth_date date
first_name varchar(30)
last_name varchar(30)
sex char(1)
hire_date date

salaries
-
emp_no int fk >- employees.emp_no
salary money
