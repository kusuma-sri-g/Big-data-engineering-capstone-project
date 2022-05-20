create database db_kushi;
use db_kushi;

create external table employees(emp_no int,emp_title_id varchar(10),birth_date varchar(20),first_name varchar(20),last_name varchar(20),sex varchar(2),hire_date varchar(20),no_of_projects int,Last_performance_rating varchar(2),left_ int,last_date varchar(20))
STORED AS PARQUET LOCATION "/user/anabig114234/for_schema/employees";

create external table salaries(emp_no int,salary int)
STORED AS PARQUET LOCATION "/user/anabig114234/for_schema/salaries";


create external table titles(title_id varchar(10),title varchar(20))
STORED AS PARQUET LOCATION "/user/anabig114234/for_schema/titles";

create external table departments(dept_no varchar(10),dept_name varchar(20))
STORED AS PARQUET LOCATION "/user/anabig114234/for_schema/departments";


create external table dept_emp(emp_no int,dept_no varchar(10))
STORED AS PARQUET LOCATION "/user/anabig114234/for_schema/dept_emp";

create external table dept_manager(dept_no varchar(10),emp_no int)
STORED AS PARQUET LOCATION "/user/anabig114234/for_schema/dept_manager";