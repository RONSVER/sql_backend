-- Создать новую базу данных homeworks и в этой базе создать таблицу employees; 
-- employeeid целое число первичный ключ автоинкремент, 
-- fname строка не null, 
-- lastname строка не null, 
-- email строка не null, 
-- phone строка не null 

create database homeworks;
use homeworks;

create table employees(
	employeeid int primary key auto_increment,
    fname varchar(128) not null,
    lastname varchar(128) not null,
    email varchar(128) not null,
    phone varchar(128) not null
);

-- Ой, забыли про зарплату)) Добавить поле salary numeric(9, 2), 

alter table employees
add column salary numeric(9, 2);

-- Ойййй, нет, зарплата должна быть целым числом. Изменить тип salary на integer. 

alter table employees
modify column salary int;

-- Переименовать поле name на first_name 

alter table employees
change column fname first_name varchar(128);

-- Удалить поле phone 

alter table employees
drop column phone;

-- Добавить поле department строка не null

alter table employees
add column department varchar(128) not null;

-- Заполнить таблицу https://github.com/annykh/GT301023-e/blob/main/employees.txt

insert into employees(first_name, last_name, email, salary, department) values("Steven","King",	"SKING", 24000, "Sales");
insert into employees(first_name, last_name, email, salary, department) values("Neena" , "Kochhar" , "NKOCHHAR" , 17000 , "Sales");
insert into employees(first_name, last_name, email, salary, department) values("Lex" , "De Haan" , "LDEHAAN" , 17000 , "Sales");
insert into employees(first_name, last_name, email, salary, department) values("Alexander" , "Hunold" , "AHUNOLD" , 9000 , "Finance");
insert into employees(first_name, last_name, email, salary, department) values("Bruce" , "Ernst" , "BERNST" , 6000 , "Finance");
insert into employees(first_name, last_name, email, salary, department) values("Valli" , "Pataballa" , "VPATABAL" , 4800 , "Finance");
insert into employees(first_name, last_name, email, salary, department) values("Diana" , "Lorentz" , "DIANALO" , 8800 , "Finance");
insert into employees(first_name, last_name, email, salary, department) values("Nancy" , "Greenberg" , "NGREENBE" , 12008 , "Shipping");
insert into employees(first_name, last_name, email, salary, department) values("Daniel" , "Faviet" , "DFAVIET" , 9000 , "Shipping");
insert into employees(first_name, last_name, email, salary, department) values("Jose Manuel" , "Urman" , "JMURMAN" , 7800 , "Shipping");
insert into employees(first_name, last_name, email, salary, department) values("Luis" , "Popp" , "LPOPP" , 6900 , "Shipping");
insert into employees(first_name, last_name, email, salary, department) values("Den" , "Raphaely" , "DRAPHEAL" , 11000 , "Marketing");
insert into employees(first_name, last_name, email, salary, department) values("Alexander" , "Khoo" , "AKHOO" , 3100 , "Marketing");
insert into employees(first_name, last_name, email, salary, department) values("Shelli" , "Baida" , "SBAIDA" , 2900 , "Marketing");
insert into employees(first_name, last_name, email, salary, department) values("Sigal" , "Tobias" , "STOBIAS" , 2800 , "Marketing");
insert into employees(first_name, last_name, email, salary, department) values("Matthew" , "Weiss" , "MWEISS" , 8000 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Adam" , "Fripp" , "AFRIPP" , 8200 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Payam" , "Kaufling" , "PKAUFLIN" , 7900 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Shanta" , "Vollman" , "SVOLLMAN" , 6500 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Kevin" , "Mourgos" , "KMOURGOS" , 5800 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Julia" , "Nayer" , "JNAYER" , 3200 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Adam" , "Markle" , "SMARKLE" , 2200 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Laura" , "Bissot" , "LBISSOT" , 3300 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Mozhe" , "Atkinson" , "MATKINSO" , 2800 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Joshua" , "Patel" , "JPATEL" , 2500 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Trenna" , "Rajs" , "TRAJS" , 3500 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("John" , "Russell" , "JRUSSEL" , 14000 , "IT");
insert into employees(first_name, last_name, email, salary, department) values("Karen" , "Partners" , "KPARTNER" , 13500 , "IT");
insert into employees(first_name, last_name, email, salary, department) values("Alberto" , "Errazuriz" , "AERRAZUR" , 12000 , "IT");
insert into employees(first_name, last_name, email, salary, department) values("Gerald" , "Cambrault" , "GCAMBRAU" , 11000 , "IT");
insert into employees(first_name, last_name, email, salary, department) values("Eleni" , "Zlotkey" , "EZLOTKEY" , 10500 , "IT");
insert into employees(first_name, last_name, email, salary, department) values("Adam" , "Vargas" , "PVARGAS" , 2500 , "Human Resources");
insert into employees(first_name, last_name, email, salary, department) values("Laura" , "Errazuriz" , "AERRAZUR" , 12000 , "IT");

-- Найти всех IT работников с зарплатой выше 12000 и отсортировать по убыванию зарплаты.

select * 
from employees
where salary > 12000
order by salary desc;

-- Повысить зарплату работников отдела Human Resources в 5 раз 

update employees
set salary = salary * 5
where department = 'Human Resources';

set sql_safe_updates = 0; 
set sql_safe_updates = 1; 

-- Найти первых двух работников отдела Marketing с зарплатой ниже 3000. 

select * 
from employees
where department = 'Marketing' and salary < 3000
limit 2;

-- У руководителя родились близнецы Лаура и Адам, в честь праздника он решил повысить зарплату работников с именами Лаура и Адам в 10 раз. 

update employees
set salary = salary * 10
where first_name = 'Laura' and first_name = 'Adam';


-- Diana Lorentz вышла замуж и поменяла фамилию на King. Поменяйте у Diana Lorentz фамилию на King. 

update employees
set last_name = 'King'
where first_name = 'Diana' AND last_name = 'Lorentz';

set sql_safe_updates = 0; 
set sql_safe_updates = 1; 


-- Всех работников отдела sales уволили. Удалите работников sales из таблицы. 

delete from employees
where department = 'sales';

set sql_safe_updates = 0; 
set sql_safe_updates = 1; 

-- Сотрудник с id 7 уволился. Удалите его из таблицы

delete from employees
where employeeid = 7;

set sql_safe_updates = 0; 
set sql_safe_updates = 1; 

-- После праздника руководитель протрезвел и уменьшил зарплаты работников с именами Лаура и Адам в 10 раз. 

update employees
set salary = salary / 10
where first_name in ('Laura', 'Adam');

set sql_safe_updates = 0; 
set sql_safe_updates = 1; 

-- Laura Bissot поменяла свой мейл на BISSOTLAURA. Измените данные для работника Laura Bissot.

update employees
set email = 'BISSOTLAURA'
where first_name = 'Laura' and last_name = 'Bissot';

set sql_safe_updates = 0; 
set sql_safe_updates = 1; 

select * from employees;

-- Diana King развелась и поменяла фамилию обратно на Lorentz. 
-- И в честь развода руководитель повысил ее зарплату на 2000.  Измените данные для работника Diana King.

update employees
set last_name = 'Lorentz', salary = salary + 2000
WHERE first_name = 'Diana' AND last_name = 'King';

set sql_safe_updates = 0; 
set sql_safe_updates = 1; 

select * from employees;