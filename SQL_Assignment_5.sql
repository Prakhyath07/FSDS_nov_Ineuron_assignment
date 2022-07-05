create database Assignment5

use Assignment1

Drop table Workers
Truncate table Workers

create table Workers(
ID INT PRIMARY KEY AUTO_INCREMENT,
first_name varchar(50),
last_name varchar(50),
Age int,
Department varchar(50),
Email_id varchar(255)
)

select * from Workers

insert into Workers(first_name,last_name,Age,Department,Email_id)
values
('Prakhyath','Bhandary',26,'Design','prak@gmail.com'),
('Vikyath','Bhandary',24,'Web Developer','vik@gmail.com'),
('Corey','Andersom',36,'MMA','corey@yahoo.in'),
('Cristiano','Ronaldo',39,'Footballer','cr7.com'),
('Micheal','Schumacher',46,'F1','ms.in'),
('Shawn','Michaels',56,'Wrestler','shawn@gmail.com'),
('John','Cenat',42,'Wrestler','joh@.com'),
('Lionel','Messi',39,'Footballer','messi@gmail.com'),
('Satish','Shetty',50,'BusDriver','ss@gmail.com'),
('Vipul','Sharma',40,'Contractor','vs@gmail.com');

1)---->
select * from Workers WHERE first_name not in ('Vipul', 'Satish')

2)--->
select * from Workers WHERE first_name like '_____h'

3)--->
SELECT * FROM Workers WHERE Email_id NOT LIKE '%_@__%.__%'


