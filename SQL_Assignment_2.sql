create database Assignment2

use Assignment2

Drop table Workers

SET SQL_SAFE_UPDATES = 0;
Delete from Workers

create table Workers(
ID INT PRIMARY KEY AUTO_INCREMENT,
first_name varchar(50),
last_name varchar(50),
Age int,
Department varchar(50),
Salary int
)

select * from Workers

insert into Workers(first_name,last_name,Age,Department,Salary)
values
('Prakhyath','Bhandary',26,'Design',30000),
('Vikyath','Bhandary',24,'Web Developer',10000),
('Corey','Andersom',36,'MMA',120000),
('Cristiano','Ronaldo',39,'Footballer',200000),
('Micheal','Schumacher',46,'F1',3500000),
('Shawn','Michaels',56,'Wrestler',12000),
('John','Cena',42,'Wrestler',45000),
('Lionel','Messi',39,'Footballer',600000),
('Amitabh','Bacchan',80,'Actor',100000);

SELECT table_schema, table_name, table_collation 
FROM information_schema.tables WHERE table_name = 'Workers';

-- Change database collation
ALTER DATABASE `Assignment2` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs;

-- or change table collation
ALTER TABLE `Workers` CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_as_cs;

-- or change column collation
ALTER TABLE `table` CHANGE `Value` 
    `Value` VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_bin;


1)---->
SELECT SUBSTRING(first_name, 1, 3) as 3_letters from Workers

2)--->
select instr(first_name, 'a')  from workers where first_name='Amitabh'

3)--->

SELECT t.DEPARTMENT,t.FIRST_NAME,t.Salary 
from(SELECT max(Salary) as TotalSalary,DEPARTMENT from Workers group by DEPARTMENT) as TempNew 
Inner Join Workers as t 
on TempNew.DEPARTMENT=t.DEPARTMENT and TempNew.TotalSalary=t.Salary;