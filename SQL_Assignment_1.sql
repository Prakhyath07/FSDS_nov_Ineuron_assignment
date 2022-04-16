create database Assignment1

use Assignment1

Drop table Workers

create table Workers(
ID INT PRIMARY KEY AUTO_INCREMENT,
first_name varchar(50),
last_name varchar(50),
Age int,
Department varchar(50)
)

select * from Workers

insert into Workers(first_name,last_name,Age,Department)
values
('Prakhyath','Bhandary',26,'Design'),
('Vikyath','Bhandary',24,'Web Developer'),
('Corey','Andersom',36,'MMA'),
('Cristiano','Ronaldo',39,'Footballer'),
('Micheal','Schumacher',46,'F1'),
('Shawn','Michaels',56,'Wrestler'),
('John','Cenat',42,'Wrestler'),
('Lionel','Messi',39,'Footballer');

1)---->
select first_name as WORKER_NAME from Workers

2)--->
select Distinct Department from Workers

3)--->
(select * from Workers order by ID Desc limit 5)
order by ID Asc;
