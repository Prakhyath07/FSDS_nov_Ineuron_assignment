create database Assignment3

use Assignment3

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

1)---->
SELECT Rtrim(first_name) as Name from workers

2)--->
select distinct department, length(department) from workers

3)--->
## n=3
select salary from workers order by salary desc limit 2,1