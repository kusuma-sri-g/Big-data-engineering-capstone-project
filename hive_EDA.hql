--1--EXPLORATORY DATA ANALYSIS

--1. A list showing employee number, last name, first name, sex, and salary for each employee



select s.emp_no,e.last_name,e.first_name,e.sex,s.salary from employees as e

inner join salaries as s on e.emp_no = s.emp_no

order by s.emp_no;



--2. A list showing first name, last name, and hire date for employees who were hired in 1986.



select first_name, last_name, hire_date from employees 

where extract(year from hire_date) = 1986;



--3. A list showing the manager of each department with the following information: department number, department name, 

--the manager's employee number, last name, first name.



select dept_manager.dept_no, departments.dept_name,dept_manager.emp_no,

employees.first_name,employees.last_name from dept_manager

inner join departments on dept_manager.dept_no = departments.dept_no

inner join employees on dept_manager.emp_no = employees.emp_no

order by dept_manager.dept_no;



--4. A list showing the department of each employee with the following information: employee number, last name, first 

--name, and department name.



select employees.emp_no,employees.last_name,employees.first_name,departments.dept_name from employees 

left join dept_emp on employees.emp_no = dept_emp.emp_no

inner join departments  on dept_emp.dept_no = departments.dept_no

order by employees.emp_no,dept_emp.dept_no;



--5.A list showing first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B.

select first_name,last_name,sex from employees

where first_name like "Hercules" and last_name like "B%"



--6 A list showing all employees in the Sales department, including their employee number, last name, first name, and 

--department name.



select employees.emp_no, employees.last_name,employees.first_name,departments.dept_name from employees

inner join dept_emp on employees.emp_no = dept_emp.emp_no

inner join departments on departments.dept_no = dept_emp.dept_no

where departments.dept_name = 'Sales';



--7 A list showing all employees in the Sales and Development departments, including their employee number, last name, 

--first name, and department name.



select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name

from employees 

inner join dept_emp on dept_emp.emp_no = employees.emp_no

inner join departments on dept_emp.dept_no= departments.dept_no

where (departments.dept_name) = 'Sales' or (departments.dept_name) = 'development';



--8 A list showing the frequency count of employee last names, in descending order. ( i.e., how many employees share each last name



select last_name,count(last_name) as Frequency 

from employees 

group by last_name

order by frequency desc;
