create table employees(emp_no int NOT NULL,emp_title_id varchar(10) NOT NULL,birth_date varchar(20) NOT NULL,first_name varchar(20) NOT NULL,last_name varchar(20) NOT NULL,sex varchar(2) NOT NULL,hire_date varchar(20) NOT NULL,no_of_projects int NOT NULL,Last_performance_rating varchar(2),left_ int,last_date varchar(20),PRIMARY KEY(emp_no));

load data local infile "/home/anabig114234/employees.csv" into table employees fields terminated by ',' enclosed by '"' lines terminated by '\n' Ignore 1 rows; 

create table departments(dept_no varchar(10) NOT NULL,dept_name varchar(20));

load data local infile "/home/anabig114234/departments.csv" into table departments fields terminated by ',' enclosed by '"' lines terminated by '\n' Ignore 1 rows;

create table salaries(emp_no int NOT NULL,salary int NOT NULL);

load data local infile "/home/anabig114234/salaries.csv" into table salaries fields terminated  by ',' enclosed by '"' lines terminated by '\n' Ignore 1 rows; 



create table titles(title_id varchar(10) NOT NULL,title varchar(20) NOT NULL, PRIMARY KEY (title_id));

load data local infile "/home/anabig114234/titles.csv" into table titles fields terminated by ',' enclosed by '"' lines terminated by '\n' Ignore 1 rows;

 

create table dept_emp(emp_no int NOT NULL,dept_no varchar(10) NOT NULL);

load data local infile "/home/anabig114234/dept_emp.csv" into table dept_emp fields terminated by ',' enclosed by '"' lines terminated by '\n' Ignore 1 rows; 



create table dept_manager(dept_no varchar(10) NOT NULL,emp_no int NOT NULL);

load data local infile "/home/anabig114234/dept_manager.csv" into table dept_manager fields terminated by ',' enclosed by '"' lines terminated by '\n' Ignore 1 rows;
