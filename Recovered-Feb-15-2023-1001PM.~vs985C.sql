
CREATE TABLE departments ( 
DEPARTMENT_ID INT PRIMARY KEY, 
DEPARTMENT_NAME VARCHAR(50) NOT NULL, 
MANAGER_ID INT NOT NULL, 
LOCATION_ID INT NOT NULL 
); 
  
INSERT INTO departments (DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, 
LOCATION_ID) 
VALUES 
(10, 'Administration', 200, 1700), 
(20, 'Marketing', 201, 1800), 
(30, 'Purchasing', 114, 1700), 
(40, 'Human Resources', 203, 2400), 
(50, 'Shipping', 121, 1500), 
(60, 'IT', 103, 1400), 
(70, 'Public Relations', 204, 2700), 
(80, 'Sales', 145, 2500), 
(90, 'Executive', 100, 1700), 
(100, 'Finance', 108, 1700), 
(110, 'Accounting', 205, 1700), 
(120, 'Treasury', 0, 1700), 
(130, 'Corporate Tax', 0, 1700), 
(140, 'Control And Credit', 0, 1700), 
(150, 'Shareholder Services', 0, 1700), 
(160, 'Benefits', 0, 1700), 
(170, 'Manufacturing', 0, 1700), 
(180, 'Construction', 0, 1700), 
(190, 'Contracting', 0, 1700), 
(200, 'Operations', 0, 1700), 
(210, 'IT Support', 0, 1700), 
(220, 'NOC', 0, 1700), 
(230, 'IT Helpdesk', 0, 1700), 
(240, 'Government Sales', 0, 1700), 
(250, 'Retail Sales', 0, 1700), 
(260, 'Recruiting', 0, 1700), 
(270, 'Payroll', 0, 1700); 
 
 
create table Employee ( 
EMPLOYEE_ID int PRIMARY KEY, 
FIRST_NAME varchar(50), 
LAST_NAME varchar(50), 
EMAIL varchar(50), 
PHONE_NUMBER varchar(50), 
HIRE_DATE Date , 
JOB_ID int , 
SALARY float, 
COMMISSION_PTC float, 
MANAGER_ID int, 
DEPARTMENT_ID int);
  
 
 alter table Employee alter column JOB_ID varchar(50);
 
 
 
insert into Employee values  
(100, 'Steven', 'King','SKING','515.123.4567' ,'2003-06-17', 'AD_PRES',24000.00,0.00,0,90), 
(101, 'Neena', 'Kochhar','NKOCHHAR','515.123.4568' ,'2005-09-21', 'AD_VP',17000.00,0.00,100,90), 
(102, 'Lex', 'De Haan','LDEHAAN','515.123.4569' ,'2001-01-13', 'AD_VP',17000.00,0.00,100,90), 
(103, 'Alexandra', 'Hunold','AHUNOLD','590.423.4567' ,'2006-01-03', 'IT_PROG',9000.00,0.00,102,60), 
(104, 'Bruce', 'Ernst','BERNST','590.423.4568','2007-05-21','IT_PROG',6000.00,0.00,103,60), 
(105, 'David', 'Austin', 'DAUSTIN', '590.423.4569' , '2002-08-17','IT_PROG', 4800.00, 0.00,103,60), 
(106, 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', '2006-02-05', 'IT_PROG', 4800.00,0.00,103,60); 
 
 
CREATE TABLE Locations ( 
    LOCATION_ID INT PRIMARY KEY, 
    STREET_ADDRESS VARCHAR(255), 
    POSTAL_CODE VARCHAR(255), 
    CITY VARCHAR(255), 
    STATE_PROVINCE VARCHAR(255), 
    COUNTRY_ID CHAR(2) 
); 
  
 
 
 select * from Locations;
 
 
 
 
 
 
INSERT INTO Locations 
(LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, 
COUNTRY_ID) 
VALUES 
(1000, '1297 Via Cola di Rie', '989', 'Roma', '', 'IT'), 
(1100, '93091 Calle della Testa', '10934', 'Venice', '', 'IT'), 
(1200, '2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo Prefecture', 'JP'), 
(1300, '9450 Kamiya-cho', '6823', 'Hiroshima', '', 'JP'), 
(1400, '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US'), 
(1500, '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US'), 
(1600, '2007 Zagora St', '50090', 'South Brunswick', 'New Jersey', 'US'), 
(1700, '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US'), 
(1800, '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA'), 
(1900, '6092 Boxwood St', 'YSW 9T2', 'Whitehorse', 'Yukon', 'CA'), 
(2000, '40-5-12 Laogianggen', '190518', 'Beijing', '', 'CN'), 
(2100, '1298 Vileparle (E)', '490231', 'Bombay', 'Maharashtra', 'IN'), 
(2200, '12-98 Victoria Street', '2901', 'Sydney', 'New South Wales', 'AU'), 
(2300, '198 Clementi North', '540198', 'Singapore', '', 'SG'), 
(2400, '8204 Arthur St', '', 'London', '', 'UK'), 
(2500, 'Magdalen Centre, The Oxford Science Park', 'OX9 9ZB', 'Oxford', 'Oxford', 'UK'), 
(2600, '9702 Chester Road', '9629850 293', 'Stretford', 'Manchester', 'UK'), 
(2700, 'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 'DE'), 
(2800, 'Rua Frei Caneca 1360', '01307-002', 'Sao Paulo', 'Sao Paulo', 'BR'), 
(2900, '20 Rue des Corps-Saints', '1730', 'Geneva', 'Geneve', 'CH'), 
(3000, 'Murtenstrasse 921', '3095', 'Bern', 'BE', 'CH'), 
(3100, 'Pieter Breughelstraat 837', '3029SK', 'Utrecht', 'Utrecht', 'NL'), 
(3200, 'Mariano Escobedo 9991', '11932', 'Mexico City', 'Distrito Federal,', 'MX'); 
 
 select * from Locations;
 
 
create table Job_grades ( 
GRADE_LEVEL varchar(50), 
LOWEST_SAL int, 
HIGHEST_SAL int) 
  
insert into Job_grades values 
('A', 1000,2999), 
('B', 3000, 5999), 
('C', 6000, 9999), 
('D',10000,14999), 
('E' , 15000,24999), 
('F', 25000,40000); 
 
 
 
 
 
 
 
 
 
 
 
CREATE TABLE Salesman ( 
    salesman_id INT PRIMARY KEY, 
    name VARCHAR(20) NOT NULL, 
    city VARCHAR(20) NOT NULL, 
    commission DECIMAL(4, 2) NOT NULL 
); 
  
INSERT INTO Salesman (salesman_id, name, city, commission) 
VALUES 
    (5001, 'James Hoog', 'New York', 0.15), 
    (5002, 'Nail Knite', 'Paris', 0.13), 
    (5005, 'Pit Alex', 'London', 0.11), 
    (5006, 'Mc Lyon', 'Paris', 0.14), 
    (5007, 'Paul Adam', 'Rome', 0.13), 
    (5003, 'Lauson Hen', 'San Jose', 0.12); 
 
 
 
 
 
 
 
 
 
 
CREATE TABLE Customer ( 
    customer_id INT PRIMARY KEY, 
    cust_name VARCHAR(20) NOT NULL, 
    city VARCHAR(20) NOT NULL, 
    grade INT, 
    salesman_id INT, 
    FOREIGN KEY (salesman_id) REFERENCES Salesman(salesman_id) 
); 
  
INSERT INTO Customer (customer_id, cust_name, city, grade, salesman_id) 
VALUES 
    (3002, 'Nick Rimando', 'New York', 100, 5001), 
    (3007, 'Brad Davis', 'New York', 200, 5001), 
    (3005, 'Graham Zusi', 'California', 200, 5002), 
    (3008, 'Julian Green', 'London', 300, 5002), 
    (3004, 'Fabian Johnson', 'Paris', 300, 5006), 
    (3009, 'Geoff Cameron', 'Berlin', 100, 5003), 
    (3003, 'Jozy Altidor', 'Moscow', 200, 5007), 
    (3001, 'Brad Guzan', 'London', NULL, 5005); 
 
 
 
 
 
 
 
 
 
CREATE TABLE Orders ( 
    ord_no INT PRIMARY KEY, 
    purch_amt DECIMAL(8, 2) NOT NULL, 
    ord_date DATE NOT NULL, 
    customer_id INT, 
    salesman_id INT, 
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id), 
    FOREIGN KEY (salesman_id) REFERENCES Salesman(salesman_id) 
); 
  
INSERT INTO Orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) 
VALUES 
    (70001, 150.5, '2012-10-05', 3005, 5002), 
    (70009, 270.65, '2012-09-10', 3001, 5005), 
    (70002, 65.26, '2012-10-05', 3002, 5001), 
    (70004, 110.5, '2012-08-17', 3009, 5003), 
    (70007, 948.5, '2012-09-10', 3005, 5002), 
    (70005, 2400.6, '2012-07-27', 3007, 5001), 
    (70008, 5760, '2012-09-10', 3002, 5001), 
    (70010, 1983.43, '2012-10-10', 3004, 5006), 
    (70003, 2480.4, '2012-10-10', 3009, 5003), 
    (70012, 250.45, '2012-06-27', 3008, 5002), 
    (70011, 75.29, '2012-08-17', 3003, 5007), 
    (70013, 3045.6, '2012-04-25', 3002, 5001); 
 
 
 
 
CREATE TABLE Company_mast ( 
    COM_ID INT PRIMARY KEY, 
    COM_NAME VARCHAR(30) NOT NULL 
); 
  
INSERT INTO Company_mast (COM_ID, COM_NAME) 
VALUES 
    (11, 'Samsung'), 
    (12, 'iBall'), 
    (13, 'Epsion'), 
    (14, 'Zebronics'), 
    (15, 'Asus'), 
    (16, 'Frontech'); 
 
 
create table item_mast ( 
PRO_ID int PRIMARY KEY, 
PRO_NAME varchar(50), 
PRO_PRICE float, 
PRO_COM int) 
  
 
 
 
 
 
 
insert into item_mast values  
(101,'Mother Board', 3200.00,15), 
(102, 'Key Board', 450.00, 16), 
(103, 'ZIP drive', 250.00,14), 
(104, 'Speaker' , 550.00,16), 
(105, 'Monitor' , 5000.00,11), 
(106, 'DVD drive', 900.00, 12), 
(107, 'CD drive', 800.00, 12), 
(108, 'Printer', 2600.00, 13), 
(109, 'Refill cartridge' , 350.00, 13), 
(110, ' Mouse', 250.00, 12); 
 
CREATE TABLE DEPARTMENT ( 
    DPT_CODE INT PRIMARY KEY, 
    DPT_NAME VARCHAR(20) NOT NULL, 
    DPT_ALLOTMENT FLOAT NOT NULL 
); 
  
 
 
 
INSERT INTO DEPARTMENT (DPT_CODE, DPT_NAME, DPT_ALLOTMENT) 
VALUES 
(57, 'IT', 65000), 
(63, 'Finance', 15000), 
(47, 'HR', 240000), 
(27, 'RD', 55000), 
(89, 'QC', 75000); 
 
 CREATE TABLE EMP_DETAILS ( 
    EMP_IDNO INT PRIMARY KEY, 
    EMP_FNAME VARCHAR(50) NOT NULL, 
    EMP_LNAME VARCHAR(50) NOT NULL, 
    EMP_DEPT INT NOT NULL 
); 
  
INSERT INTO EMP_DETAILS (EMP_IDNO, EMP_FNAME, EMP_LNAME, 
EMP_DEPT) 
VALUES  
(127323, 'Michale', 'Robbin', 57), 
(526689, 'Carlos', 'Snares', 63), 
(843795, 'Enric', 'Dosio', 57), 
(328717, 'Jhon', 'Snares', 63), 
(444527, 'Joseph', 'Dosni', 47), 
(659831, 'Zanifer', 'Emily', 47), 
(847674, 'Kuleswar', 'Sitaraman', 57), 
(748681, 'Henrey', 'Gabriel', 47), 
(555935, 'Alex', 'Manuel', 57), 
(539569, 'George', 'Mardy', 27), 
(733843, 'Mario', 'Saule', 63), 
(631548, 'Alan', 'Snappy', 27),
(839139, 'Maria', 'Foster', 57);

--1. From the following tables, write a SQL query to find the first name, last name, department number, and department name for each employee.
SELECT FIRST_NAME,LAST_NAME,departments.DEPARTMENT_ID,DEPARTMENT_NAME from Employee
inner join departments on (Employee.DEPARTMENT_ID=departments.DEPARTMENT_ID);

--2. From the following tables, write a SQL query to find the first name, last name, department, city, and state province for each employee.
SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY,STATE_PROVINCE from Employee
inner join departments on (Employee.DEPARTMENT_ID=departments.DEPARTMENT_ID)
inner join Locations on (Locations.LOCATION_ID=departments.LOCATION_ID);

--3. From the following table, write a SQL query to find the first name, last name, salary, and job grades for all employees.
SELECT FIRST_NAME,LAST_NAME,SALARY,GRADE_LEVEL from Employee
inner join Job_grades on (LOWEST_SAL<= SALARY AND SALARY<=HIGHEST_SAL );

--4. From the following tables, write a SQL query to find all those employees who work in department ID 80 or 40. Return first name, last name, department number and department name.
SELECT FIRST_NAME,LAST_NAME,departments.DEPARTMENT_ID,DEPARTMENT_NAME from Employee
inner join departments on (Employee.DEPARTMENT_ID=departments.DEPARTMENT_ID)
where departments.DEPARTMENT_ID in (80,40);

--5. From the following tables, write a SQL query to find those employees whose first name contains the letter ‘z’. Return first name, last name, department, city, and state province.
SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_NAME,CITY,STATE_PROVINCE from Employee
inner join departments on (Employee.DEPARTMENT_ID=departments.DEPARTMENT_ID)
inner join Locations on (Locations.LOCATION_ID=departments.LOCATION_ID)
where FIRST_NAME like '%z%';

--6. From the following tables, write a SQL query to find all departments, including those without employees. Return first name, last name, department ID, department name.
SELECT FIRST_NAME,LAST_NAME,departments.DEPARTMENT_ID,DEPARTMENT_NAME from Employee
right join departments on (Employee.DEPARTMENT_ID=departments.DEPARTMENT_ID);

--7. From the following table, write a SQL query to find the employees who earn less than the employee of ID 182. Return first name, last name and salary.
SELECT e1.FIRST_NAME,e1.LAST_NAME,e1.SALARY from Employee e1
join  Employee e2 on (e2.EMPLOYEE_ID = 182 AND e2.SALARY>e1.SALARY);


--8. From the following table, write a SQL query to find the employees and their managers. Return the first name of the employee and manager.
SELECT e1.FIRST_NAME as "employee name",e2.FIRST_NAME as "manager name" from Employee  e1
join  Employee e2 on (e1.MANAGER_ID=e2.EMPLOYEE_ID);

--9. From the following tables, write a SQL query to display the department name, city, and state province for each department.
SELECT DEPARTMENT_NAME,CITY,STATE_PROVINCE from departments
inner join Locations on (Locations.LOCATION_ID=departments.LOCATION_ID);

--11. From the following table, write a SQL query to find the employees and their managers. Those managers do not work under any manager also appear in the list. Return the first name of the employee and manager.
SELECT e1.FIRST_NAME as "employee name",e2.FIRST_NAME as "manager name" from Employee  e1
left join Employee e2 on (e1.MANAGER_ID=e2.EMPLOYEE_ID);

--12. From the following tables, write a SQL query to find the employees who work in the same department as the employee with the last name Taylor. Return first name, last name and department ID.
SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_ID from Employee
WHERE LAST_NAME = 'Taylor'
ORDER BY DEPARTMENT_ID;

--13. From the following table, write a SQL query to calculate the average salary, the number of employees receiving commissions in that department. Return department name, average salary and number of employees.
SELECT DEPARTMENT_NAME,AVG(salary) as "Avrage salary",COUNT( FIRST_NAME) as "number of employees" from Employee
inner join departments on (Employee.DEPARTMENT_ID=departments.DEPARTMENT_ID)
group by DEPARTMENT_NAME

--14. From the following tables, write a SQL query to find the department name and the full name (first and last name) of the employee.
SELECT DEPARTMENT_NAME,CONCAT(FIRST_NAME,' ',LAST_NAME) as "employee full name" from Employee
inner join departments on (Employee.DEPARTMENT_ID=departments.DEPARTMENT_ID);

--15. From the following tables, write a SQL query to find the department name, full name (first and last name) of the employee and their city.
SELECT DEPARTMENT_NAME,CONCAT(FIRST_NAME,' ',LAST_NAME)as "employee full name"  ,CITY from Employee
inner join departments on (Employee.DEPARTMENT_ID=departments.DEPARTMENT_ID)
inner join Locations on (Locations.LOCATION_ID=departments.LOCATION_ID)

--16. From the following tables, write a SQL query to find full name (first and last name), and salary of all employees working in any department in the city of London.
SELECT CONCAT(FIRST_NAME,' ',LAST_NAME) as "employee full name" ,SALARY,DEPARTMENT_NAME,CITY from Employee
inner join departments on (Employee.DEPARTMENT_ID=departments.DEPARTMENT_ID)
inner join Locations on (Locations.LOCATION_ID=departments.LOCATION_ID)
where CITY = 'London';

--17. From the following tables, write a SQL query to find the department name, department ID, and number of employees in each department.
SELECT DEPARTMENT_NAME,departments.DEPARTMENT_ID,COUNT( Employee.DEPARTMENT_ID) as "number of employees" from Employee
inner join departments on (Employee.DEPARTMENT_ID=departments.DEPARTMENT_ID)
group by departments.DEPARTMENT_ID, DEPARTMENT_NAME;

--18. From the following tables write a SQL query to find the salesperson and customer who reside in the same city. Return Salesman, cust_name and city.
SELECT (name)SALESPERSON ,(cust_name)CUSTOMER  from Salesman
inner join Customer on (Salesman.salesman_id=Customer.salesman_id)
where Salesman.city=Customer.city;

--19. From the following tables write a SQL query to find those orders where the order amount exists between 500 and 2000. Return ord_no, purch_amt, cust_name, city.
SELECT ord_no,purch_amt,cust_name,city  from Orders
inner join Customer on (Orders.customer_id=Customer.customer_id)
where purch_amt between 500 and 2000;

--20. From the following tables write a SQL query to find the salesperson(s) and the customer(s) he represents. Return Customer Name, city, Salesman, commission.
SELECT (cust_name)CUSTOMER_NAME,Customer.city,(name)SALESPERSON , commission from Salesman
inner join Customer on (Salesman.salesman_id=Customer.salesman_id);

--21. From the following tables write a SQL query to find salespeople who received commissions of more than 12 percent from the company. Return Customer Name, customer city, Salesman, commission.
SELECT (cust_name)CUSTOMER_NAME,Customer.city,(name)SALESPERSON , commission from Salesman
inner join Customer on (Salesman.salesman_id=Customer.salesman_id)
where  commission>0.12;

--22. From the following tables write a SQL query to locate those salespeople who do not live in the same city where their customers live and have received a commission of more than 12% from the company. Return Customer Name, customer city, Salesman, salesman city, commission.
SELECT (cust_name)CUSTOMER_NAME,Customer.city,(name)SALESPERSON , commission from Salesman
inner join Customer on (Salesman.salesman_id=Customer.salesman_id)
where Salesman.city<>Customer.city AND commission>0.12;

--23. From the following tables write a SQL query to find the details of an order. Return ord_no, ord_date, purch_amt, Customer Name, grade, Salesman, commission.
SELECT ord_no,ord_date,purch_amt,cust_name,grade,(name)SALESPERSON,commission  from Orders
inner join Customer on (Orders.customer_id=Customer.customer_id)
inner join Salesman on (Salesman.salesman_id=Customer.salesman_id)

--24. Write a SQL statement to join the tables salesman, customer and orders so that the same column of each table appears once and only the relational rows are returned.
SELECT cust_name,(name)SALESPERSON,commission,Customer.city,Orders.*   from Orders
inner join Customer on (Orders.customer_id=Customer.customer_id)
inner join Salesman on (Salesman.salesman_id=Customer.salesman_id);

--25. From the following tables write a SQL query to display the customer name, customer city, grade, salesman, salesman city. The results should be sorted by ascending customer_id.
SELECT cust_name,(Customer.city)Customer_city,grade,(name)SALESPERSON,(Salesman.city)Salesman_city,commission  from Customer
inner join Salesman on (Salesman.salesman_id=Customer.salesman_id)
order by  customer_id  ;

--26. From the following tables write a SQL query to find those customers with a grade less than 300. Return cust_name, customer city, grade, Salesman, salesmancity. The result should be ordered by ascending customer_id.
SELECT cust_name,(Customer.city)Customer_city,grade,(name)SALESPERSON,(Salesman.city)Salesman_city  from Customer
inner join Salesman on (Salesman.salesman_id=Customer.salesman_id)
where  grade<300
order by  customer_id;

--27. Write a SQL statement to make a report with customer name, city, order number, order date, and order amount in ascending order according to the order date to determine whether any of the existing customers have placed an order or not.
SELECT cust_name,city ,ord_no,ord_date,purch_amt from Customer
 left join Orders on (Orders.customer_id=Customer.customer_id)
order by ord_date;

--28. SQL statement to generate a report with customer name, city, order number, order date, order amount, salesperson name, and commission to determine if any of the existing customers have not placed orders or if they have placed orders through their salesman or by themselves.
SELECT cust_name,a.city, ord_no,
ord_date,purch_amt AS "Order Amount",
(name)SALESPERSON,commission
FROM customer a
LEFT OUTER JOIN orders
ON a.customer_id=Orders.customer_id
LEFT OUTER JOIN salesman
ON Orders.salesman_id=Salesman.salesman_id;

--29. Write a SQL statement to generate a list in ascending order of salespersons who work either for one or more customers or have not yet joined any of the customers.
SELECT cust_name,a.city,
(name)SALESPERSON,commission
FROM customer a
right OUTER JOIN salesman ON a.salesman_id=Salesman.salesman_id;

--30. From the following tables write a SQL query to list all salespersons along with customer name, city, grade, order number, date, and amount.
SELECT cust_name,Customer.city,
(name)SALESPERSON,commission
FROM Customer
right JOIN salesman
ON Customer.salesman_id=Salesman.salesman_id;

--31. Write a SQL statement to make a list for the salesmen who either work for one or more customers or yet to join any of the customer. The customer may have placed, either one or more orders on or above order amount 2000 and must have a grade, or he may not have placed any order to the associated supplier.
SELECT cust_name,Customer.city,grade,(name)SALESPERSON,ord_no,ord_date,purch_amt  from Customer
right join Salesman  on (Salesman.salesman_id=Customer.salesman_id)
left join Orders on (Orders.customer_id=Customer.customer_id  )
where purch_amt >= 2000 AND grade IS NOT NULL;

--32.For those customers from the existing list who put one or more orders, or which orders have been placed by the customer who is not on the list, create a report containing the customer name, city, order number, order date, and purchase amount
SELECT cust_name,Customer.city,ord_no,ord_date,purch_amt  from Customer
right join Orders on (Orders.customer_id=Customer.customer_id  )
order by cust_name;

--33. Write a SQL statement to generate a report with the customer name, city, order no. order date, purchase amount for only those customers on the list who must have a grade and placed one or more orders or which order(s) have been placed by the customer who neither is on the list nor has a grade.
SELECT cust_name,Customer.city,grade,ord_no,ord_date,purch_amt  from Customer
full join Orders on (Orders.customer_id=Customer.customer_id  )
where (grade is not null ) ;

--34. Write a SQL query to combine each row of the salesman table with each row of the customer table.
SELECT *
FROM customer
cross JOIN Salesman;

--35. Write a SQL statement to create a Cartesian product between salesperson and customer, i.e. each salesperson will appear for all customers and vice versa for that salesperson who belongs to that city.
SELECT *
FROM customer
cross JOIN Salesman
where Customer.city = Salesman.city
order by Customer.city;

--36. Write a SQL statement to create a Cartesian product between salesperson and customer, i.e. each salesperson will appear for every customer and vice versa for those salesmen who belong to a city and customers who require a grade.
SELECT *
FROM customer
cross JOIN Salesman
where  Salesman.city is not null and grade is not null
order by Customer.city;

--37. Write a SQL statement to make a Cartesian product between salesman and customer i.e. each salesman will appear for all customers and vice versa for those salesmen who must belong to a city which is not the same as his customer and the customers should have their own grade.
SELECT *
FROM customer
cross JOIN Salesman
where Customer.city <> Salesman.city and grade is not null
order by Customer.city;

--38. From the following tables write a SQL query to select all rows from both participating tables as long as there is a match between pro_com and com_id.
select * from Company_mast
inner join item_mast on (PRO_COM = COM_ID)

--39. Write a SQL query to display the item name, price, and company name of all the products.
select PRO_NAME,PRO_PRICE,COM_NAME from Company_mast
inner join item_mast on (PRO_COM = COM_ID);

--40. From the following tables write a SQL query to calculate the average price of items of each company. Return average value and company name.
select avg(PRO_PRICE)avrg,COM_NAME from Company_mast
inner join item_mast on (PRO_COM = COM_ID)
group by COM_NAME;

--41. From the following tables write a SQL query to calculate and find the average price of items of each company higher than or equal to Rs. 350. Return average value and company name.
select avg(PRO_PRICE)avrg,COM_NAME from Company_mast
inner join item_mast on (PRO_COM = COM_ID)
where PRO_PRICE >= 350
group by COM_NAME;

--42. From the following tables write a SQL query to find the most expensive product of each company. Return pro_name, pro_price and com_name.
select PRO_NAME,PRO_PRICE,COM_NAME  from item_mast , Company_mast
where  (PRO_COM = COM_ID) and PRO_PRICE = (SELECT max(PRO_PRICE) from item_mast where COM_ID= PRO_COM)
order by  PRO_PRICE ASC ;

--43. From the following tables write a SQL query to display all the data of employees including their department.
select EMP_DETAILS.*,DPT_NAME,DPT_ALLOTMENT from EMP_DETAILS
inner join DEPARTMENT on (EMP_DEPT = DPT_CODE);

--44. From the following tables write a SQL query to display the first and last names of each employee, as well as the department name and sanction amount.
select EMP_FNAME,EMP_LNAME,DPT_NAME,DPT_ALLOTMENT from EMP_DETAILS
inner join DEPARTMENT on (EMP_DEPT = DPT_CODE);

--45. From the following tables write a SQL query to find the departments with budgets more than Rs. 50000 and display the first name and last name of employees.
select EMP_FNAME,EMP_LNAME from EMP_DETAILS
inner join DEPARTMENT on (EMP_DEPT = DPT_CODE)
where DPT_ALLOTMENT>50000;

--46. From the following tables write a SQL query to find the names of departments where more than two employees are employed. Return dpt_name.
select DPT_NAME from EMP_DETAILS
inner join DEPARTMENT on (EMP_DEPT = DPT_CODE)
group by DPT_NAME
having count(EMP_FNAME)>2;

--47. From the following tables write a SQL query to find the names of departments where the department name has two letters. Return dpt_name.
select DPT_NAME from EMP_DETAILS
inner join DEPARTMENT on (EMP_DEPT = DPT_CODE)
where DPT_NAME like '__'
group by DPT_NAME;

--48. From the following tables write a SQL query to find the names of customers where the customer name ends with ‘n’. Return cust_name.
select cust_name from Customer where cust_name like '%n';

--49. From the following tables write a SQL query to find the names of departments, cutomer id and order id.
SELECT DEPARTMENT_NAME,cust_name, ord_no
FROM customer
JOIN orders
ON Customer.customer_id=Orders.customer_id
join Locations on Customer.city =Locations.CITY
join departments on Locations.LOCATION_ID = departments.LOCATION_ID

--50. From the following tables write a SQL query to find cutomer name and order id where the order was purchased on October.
	
SELECT cust_name, ord_no
FROM customer
JOIN orders
ON Customer.customer_id=Orders.customer_id
where month(ord_date)= 10;	
