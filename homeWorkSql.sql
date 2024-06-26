-- Создать базу данных homeworks
create database homeworks;
use homeworks;

-- В этой базе создать таблицу employees с полями:
-- • id – integer - уникальное значение, не пустое, с автозаполнением 
-- • firstname - varchar(128) - не пустое
-- • lastname - varchar(128) - не пустое
-- • job - varchar(64)
-- • age - integer - от 20 до 100(вкл.)
-- • hascar – char только один символ, по умолчанию 'N' 
-- • username - varchar(128) - уникальное значение, не пустое
create table employees(
	id int primary key auto_increment,
	firstname varchar(128) not null,
	lastname varchar(128) not null,
    job varchar(64),
	age int check (age >= 20 and age <= 100),
    hascar char(1) default 'N',
	username varchar(128) unique not null
);


-- Добавление 5 строк в таблицу employees
insert into employees (firstname, lastname, job, age, hascar, username)
values
('Alice', 'Smith', 'Engineer', 25, 'N', 'asmith'),
('Bob', 'Johnson', 'Manager', 35, 'Y', 'bjohnson'),
('Charlie', 'Williams', 'Technician', 40, 'N', 'cwilliams'),
('David', 'Brown', 'Analyst', 50, 'Y', 'dbrown'),
('Eve', 'Jones', 'Clerk', 30, 'N', 'ejones');

-- Удаление таблицы employees
drop table employees;

-- Удаление базы данных homeworks
drop database homeworks;


-- -------------

create database tasks;
use tasks;

CREATE TABLE Staff (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(64) NOT NULL,
    lastname VARCHAR(64) NOT NULL,
    position VARCHAR(128),
    age INTEGER,
    has_child CHAR(1),
    username VARCHAR(128) unique
  );

INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Anna'
        , 'Daniels'
        , 'Senior Teacher'
        , 22
        , 'N'
        , 'annakhach5'
        );
        
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Tom'
        , 'Austin'
        , 'Junior Blogger'
        , 25
        , 'Y'
        , 'tom12345'
        );
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Bill'
        , 'Lorentz'
        , 'Junior Web Developer'
        , 40
        , 'Y'
        , 'billt1'
        );        
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Lily'
        , 'May'
        , 'Junior Backend Developer'
        , 25
        , 'Y'
        , 'lil12'
        );
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Nona'
        , 'Lucky'
        , 'Junior Teacher'
        , 20
        , 'N'
        , 'LuckyNona'
        ); 
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ( 'Nancy'
        , 'Greenberg'
        , 'Middle UI Designer'
        , 32
        , 'Y'
        , 'nancy1'
        );        
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Daniel'
        , 'Faviet'
        , 'Senior UX Designer'
        , 43
        , 'Y'
        , 'favietD'
        );        
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Ally'
        , 'Austin'
        , 'Junior UI Designer'
        , 28
        , 'N'
        , 'ally1'
        );        
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Lily'
        , 'Chen'
        , 'Senior Teacher'
        , 25
        , 'Y'
        , 'lilychen'
        );        
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Anna'
        , 'Austin'
        , 'Middle Teacher'
        , 34
        , 'Y'
        , 'anna28'
        );        
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Alexander'
        , 'Lorentz'
        , 'Junior Backend Developer'
        , 25
        , 'N'
        , 'alex12345'
        );        
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Ashley'
        , 'Lorentz'
        , 'Junior UX Designer'
        , 18
        , 'N'
        , 'lorentz99'
        );        
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Tom'
        , 'Lucky'
        , 'Middle Blogger'
        , 34
        , 'Y'
        , 'lucky78'
        );        
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Ashley'
        , 'Weiss'
        , 'Junior Blogger'
        , 18
        , 'N'
        , 'weiss11'
        );
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Tom'
        , 'Weiss'
        , 'Junior UI Designer'
        , 18
        , 'N'
        , 'tom222'
        );   
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Anna'
        , 'Bloom'
        , 'Middle UX Designer'
        , 20
        , 'N'
        , 'bloom5'
        );   
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Tom'
        , 'Berg'
        , 'Middle Teacher'
        , 34
        , 'N'
        , 'tommy1'
        );   
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Ashley'
        , 'Berg'
        , 'Senior Teacher'
        , 37
        , 'N'
        , 'ash89'
        );
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Lily'
        , 'Weiss'
        , 'Middle Blogger'
        , 45
        , 'N'
        , 'lilyW1'
        );   
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Anna'
        , 'Lorentz'
        , 'Senior UX Designer'
        , 31
        , 'N'
        , 'annlo1'
        );   
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Ashley'
        , 'Weiss'
        , 'Middle UX Designer'
        , 18
        , 'N'
        , 'weiss1'
        );       
INSERT INTO Staff(firstname, lastname, position, age, has_child, username) VALUES 
        ('Anna'
        , 'Keren'
        , 'Junior UX Designer'
        , 34
        , 'N'
        , 'annaK1'
        );       


-- Из таблицы вывести работников, которым больше 20 и меньше 40.
select * 
from Staff
where age between 20 and 40;

-- Вывести только имена сотрудников, у которых юзернейм начинается на букву А и им больше 20.
select firstname
from Staff
where username like 'A%' and age > 20;

-- Вывести имена, фамилии и возраст тех сотрудников, у которых id либо 3, либо 7, либо 10.
select firstname, lastname, age
from Staff
where id in (3, 7, 10);

-- Вывести сотрудников у которых имя начинается на букву 'A',  а фамилия заканчивается на букву 'S'.
select *
from Staff
where firstname like 'A%' and lastname like '%S';