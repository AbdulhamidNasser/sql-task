Create table department(
dep_id int primary key,
dep_name VARCHAR(20),
dep_location VARCHAR(15));

select * from department;

Create table salary_grade(
grade INTEGER,
min_salary INTEGER,
max_salary INTEGER
);

Create table employees(
emp_id INTEGER,
emp_name VARCHAR(15),
job_name VARCHAR(10),
manager_id INTEGER,
hire_date DATE,
salary DECIMAL(10, 2),
commission DECIMAL(7,2),
dep_id INTEGER Foreign key references department(dep_id)

);

INSERT INTO department	 (dep_id, dep_name,  dep_location)
VALUES ( 1001 ,'FINANCE'    , 'SYDNEY'   ),
       ( 2001 ,'AUDIT'      , 'MELBOURNE'),
       ( 3001 ,'MARKETING'  , 'PERTH'    ),
       ( 4001 ,'PRODUCTION' , 'BRISBANE' );

INSERT INTO salary_grade (grade,  min_salary,  max_salary)
 VALUES ( 1 ,  800  , 1300 ),
		( 2 ,  1301 , 1500 ),
		( 3 ,  1501 , 2100 ),
		( 4 ,  2101 , 3100 ),
		( 5 ,  3101 , 9999 );


INSERT INTO employees ( emp_id, emp_name, job_name, manager_id, hire_date, salary, commission, dep_id)
VALUES (68319 , 'KAYLING'  , 'PRESIDENT' ,  NULL  , '1991-11-18', 6000.00 , NULL   , 1001),
	   (66928 , 'BLAZE'    , 'MANAGER'   , 68319  , '1991-05-01', 2750.00 , NULL   , 3001),
	   (67832 , 'CLARE'    , 'MANAGER'   , 68319  , '1991-06-09', 2550.00 , NULL   , 1001),
	   (65646 , 'JONAS'    , 'MANAGER'   , 68319  , '1991-04-02', 2957.00 , NULL   , 2001),
	   (67858 , 'SCARLET'  , 'ANALYST'   , 65646  , '1997-04-1' , 3100.00 , NULL   , 2001),
	   (69062 , 'FRANK'    , 'ANALYST'   , 65646  , '1991-12-03', 3100.00 , NULL   , 2001),
	   (63679 , 'SANDRINE' , 'CLERK'     , 69062  , '1990-12-18', 900.00  , NULL   , 2001),
	   (64989 , 'ADELYN'   , 'SALESMAN'  , 66928  , '1991-02-20', 1700.00 , 400.00 , 3001),
	   (65271 , 'WADE'     , 'SALESMAN'  , 66928  , '1991-02-22', 1350.00 , 600.00 , 3001),
	   (66564 , 'MADDEN'   , 'SALESMAN'  , 66928  , '1991-09-28', 1350.00 , 1500.00, 3001),
	   (68454 , 'TUCKER'   , 'SALESMAN'  , 66928  , '1991-09-08', 1600.00 , 0.00   , 3001),
	   (68736 , 'ADNRES'   , 'CLERK'     , 67858  , '1997-05-23', 1200.00 , NULL   , 3001),
	   (69324 , 'MARKER'   , 'CLERK'     , 67832  , '1992-01-23', 1400.00 , NULL   , 1001);


	   select * from employees;

	   select salary from employees;

	   select distinct job_name from employees;

	   select emp_name, salary * 1.15 as increased_salary from employees;

	   SELECT concat (emp_name, ' & ', job_name) AS "Employee & Job" FROM employees ;

	   -- 6)
	   SELECT emp_id, emp_name, salary, to_char(hire_date,'MONTH DD,YYYY') FROM employees;
	   SELECT CAST([emp_id, emp_name, salary] AS CHAR([hire_date,'MONTH DD,YYYY']));
	   FORMAT(CAST([emp_id, emp_name, salary] AS CHAR([hire_date])),'MONTH DD,YYYY');

	   select count(*) from employees where salary > 2200;

	   --8)

	   select * from employees where dep_id!=2001;

	   select * from employees where hire_date < '1991-01-01';

	   select AVG(salary)"average salary" from employees where job_name='ANALYST';

	   select * from employees where emp_name like 'B%' or emp_name like '%E';

	   select *  from department where dep_name like 'B%' or dep_name like '%E';

	   select * from department where dep_location like 'F%' or dep_location like '%N';

	   --15)

	   --16)

	   --17)

	   --18)

	   select * from employees where job_name ='CLERK';

	   --20)

	   select * from employees where salary<3500;

	   select emp_name ,job_name  ,salary  from employees where job_name  ='ANALYST';

	   select * from employees where hire_date   like '1991%';
	   SELECT * FROM employees WHERE YEAR(hire_date) = 1991;

	  SELECT * FROM employees WHERE YEAR(hire_date) > 1991;

	  SELECT emp_id, emp_name, hire_date,salary FROM employees WHERE hire_date < '1991-04-01';

	  --26)

	  select * from employees where hire_date in ('1991-05-01');

	  select emp_id, emp_name,salary from employees where manager_id  in (68319);

	  --29)

	  --30)

	  select * from employees where salary%2 = 1;

	  select * from employees where salary<1000;

	  select * from employees where  MONTH(hire_date) = 4;

	  SELECT * FROM employees WHERE DAY(hire_date) < 19;

	  --35

	  ---36

	  --37

	  select * from employees where job_name='CLERK' and dep_id = 2001;

	  select * from employees where job_name='CLERK' or job_name='MANAGER';

	  SELECT * FROM employees WHERE MONTH(hire_date) != 2;

	  SELECT * FROM employees WHERE YEAR(hire_date) = 1991 AND MONTH(hire_date) = 6;

	  select * from employees where salary*12 between 24000 and 50000;

	  select * from employees  where hire_date in ('1991-05-01','1991-02-20','1991-12-03');
	  SELECT * FROM employees WHERE (hire_date = '1991-05-01') OR (hire_date = '1991-02-20') OR (hire_date = '1991-12-03');

	  SELECT * FROM employees WHERE manager_id IN (63679, 68319, 66564, 69000);

