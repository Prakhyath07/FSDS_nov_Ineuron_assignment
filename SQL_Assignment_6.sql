create database Assignment6

use Assignment6

Drop table Workers
Truncate table Workers

create table Workers(
ID INT PRIMARY KEY AUTO_INCREMENT,
first_name varchar(50),
last_name varchar(50),
Age int,
Department varchar(50),
Email_id varchar(255),
Joining varchar(50)
)

select * from Workers

insert into Workers(first_name,last_name,Age,Department,Email_id,Joining)
values
('Prakhyath','Bhandary',26,'Design','prak@gmail.com','Feb’2014.'),
('Vikyath','Bhandary',24,'Web Developer','vik@gmail.com','Oct’2014.'),
('Corey','Andersom',36,'MMA','corey@yahoo.in','Feb’2014.'),
('Cristiano','Ronaldo',39,'Footballer','cr7.com','Feb’2014.'),
('Micheal','Schumacher',46,'F1','ms.in','Aug’2014.'),
('Shawn','Michaels',56,'Wrestler','shawn@gmail.com','Feb’2014.'),
('John','Cenat',42,'Wrestler','joh@.com','Feb’2017.'),
('Lionel','Messi',39,'Footballer','messi@gmail.com','Feb’2018.'),
('Satish','Shetty',50,'BusDriver','ss@gmail.com','Feb’2016.'),
('Vipul','Sharma',40,'Contractor','vs@gmail.com','Feb’2014.'),
('Prakhyath','Gowda',23,'Design','prak1@gmail.com','Feb’2017.'),
('Vikyath','Bhandary',24,'Web Developer','vik@gmail.com','Oct’2014.'),
('Corey','Andersom',36,'MMA','corey@yahoo.in','Feb’2014.'),
('Cristiano','Ronaldo',39,'Footballer','cr7.com','Feb’2014.'),
('Micheal','Schumacher',46,'F1','ms.in','Aug’2014.'),
('Shawn','Michaels',56,'Wrestler','shawn@gmail.com','Feb’2014.'),
('John','Cenat',42,'Wrestler','joh@.com','Feb’2017.'),
('Lionel','Messi',39,'Footballer','messi@gmail.com','Feb’2018.'),
('Satish','Shetty',50,'BusConductor','ss@gmail.com','Feb’2016.'),
('Vipul','Sharma',40,'Construction','vs@gmail.com','Feb’2014.');

1)---->
select * from Workers WHERE Joining='Feb’2014.'

2)--->
select *,count(*) from Workers GROUP BY first_name,Department HAVING count(*)>1

3)--->
SET SQL_SAFE_UPDATES = 0;
DELETE FROM Workers WHERE ID NOT IN(
   SELECT t.ID FROM (SELECT MIN(ID) AS ID FROM Workers GROUP BY first_name,last_name,Age,Department,Email_id,Joining) AS t)

