--#1) List the employee number, last name, first name, sex, and salary of each employee.

select Employees.emp_no, Employees.last_name, Employees.first_name, Employees.sex, Salaries.salary
from Employees
inner join Salaries on
Salaries.emp_no=Employees.emp_no;

--#2) List the first name, last name, and hire date for the employees who were hired in 1986.

select Employees.first_name, Employees.last_name, Employees.hire_date
from Employees
where Employees.hire_date > '12/31/1985'
and Employees.hire_date < '1/1/1987';

--#3) List the manager of each department along with their department number, department name, employee number, last name, and first name.

select Dept_Manager.dept_no, Departments.dept_name, Employees.emp_no, Employees.last_name, Employees.first_name
from Dept_Manager
inner join Departments on
Dept_Manager.dept_no=Departments.dept_no
inner join Employees on 
Dept_Manager.emp_no=Employees.emp_no;
--#4) List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

select Dept_Emp.dept_no , Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
from Employees
inner join Dept_Emp on Employees.Emp_no=Dept_Emp.Emp_no
inner join Departments on dept_emp.dept_no=departments.dept_no
order by emp_no;

--#5) List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

select e.first_name, e.last_name, e.sex
from employees as e
where e.first_name = 'Hercules' 
and e.last_name like 'B%';

--#6) List each employee in the Sales department, including their employee number, last name, and first name.

select Employees.first_name, Employees.last_name, Employees.emp_no
from Employees
inner join Dept_Emp on
Employees.Emp_no=Dept_Emp.Emp_no
where Dept_Emp.Dept_no = 'd007';

--#7) List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

select Dept_Emp.dept_no , Employees.emp_no, Employees.last_name, Employees.first_name, Departments.dept_name
from Employees
inner join Dept_Emp on Employees.Emp_no=Dept_Emp.Emp_no
inner join Departments on dept_emp.dept_no=departments.dept_no
where departments.dept_no = 'd007'
or departments.dept_no = 'd005';

--#8) List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

select last_name, count(last_name)
from employees
group by last_name
order by count(last_name) desc ;