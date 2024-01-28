create database burn_saida;
create table users(
    Id int auto_increment primary key,
    Name text(255),
    Surname text(255),
    Email text(255),
    Phone int,
    Password varchar(255),
    Created_at datetime,
    Updated_at datetime,
    Deleted_at datetime
)
create table salaries(
    Id int auto_increment primary key ,
    User_id int,
    Salary float,
    Currency_type_id int,
    Created_at datetime,
    Updated_at datetime,
    Deleted_at datetime
)
create table currencies(
Id int auto_increment primary key,
    Name text,
    Created_at datetime,
    Updated_at datetime,
    Deleted_at datetime
)
insert into users (Name,Surname,Email,Phone,Password,Created_at,Updated_at,Deleted_at)
values ('Aytən', 'Əliyeva','eliyevaayten99@gmail.com',+994-50-487-65-39,'ayten123',now(),null,null),
       ('Səid','Rüstəmov','rustamovsaid98@gmail.com',+994-70-567-91-20,'123@',now(),null,null),
       ('Zaur','Məmmədov','mamedovz@mail.ru',+994-50-786-13-98,'mamedov45',now(),null,null),
       ('Lalə','Qurbanzadə','qurbanovalale87@gmail.com',+994-55-542-95-32,'paslale45',now(),null,null),
       ('Zemfira','Cəlilova','zemcc34mail@ru',+994-70-953-71-89,'zemcelilhh',now(),null,null);
insert into currencies(Id,Name, Created_at, Updated_at, Deleted_at)
values(1,'Manat',now(),null,null),
      (2,'Dollar',now(),null,null);

ALTER TABLE currencies
ADD COLUMN Currency_Symbol VARCHAR(5);

UPDATE currencies
SET Currency_Symbol = '₼'
where id=1 ;

UPDATE currencies
SET Currency_Symbol = '$'
where id=2 ;

ALTER TABLE currencies MODIFY Currency_Symbol VARCHAR(5) AFTER Name;

insert into salaries (User_id, Salary, Currency_type_id, Created_at, Updated_at, Deleted_at)
values (18,2000,1,now(),null,null),
       (19,2000,1,now(),null,null),
       (20,2000,1,now(),null,null),
       (21,2000,2,now(),null,null),
       (22,2000,2,now(),null,null);
