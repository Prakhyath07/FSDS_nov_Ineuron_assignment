create database Assignment4

use Assignment4

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
('Amitabh','Bacchan',80,'Actor',100000),
('Hrithik  ','Roshan',80,'Actor',80000),
('Sharukh    ','Khan',80,'Actor',1000000);

insert into Workers(first_name,last_name,Age,Department,Salary)
values
('Sharukh    ','Khan',80,'Business',1000000);

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
SELECT replace(first_name, 'a', 'A') as names from Workers

2)--->
select * from workers order by first_name Asc, Department desc

3)--->
select concat(first_name," ",last_name) as full_name from workers where
salary = (select max(salary) from workers)