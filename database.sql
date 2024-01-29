create database burn_saida;
create table users(
    Id int auto_increment primary key,
    Name text(255),
    Surname text(255),
    Email text(255),
    Phone bigint,
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
values ('Aytən', 'Əliyeva','eliyevaayten99@gmail.com',994504876539,'ayten123',now(),null,null),
       ('Səid','Rüstəmov','rustamovsaid98@gmail.com',994705679120,'123@',now(),null,null),
       ('Zaur','Məmmədov','mamedovz@mail.ru',994507861398,'mamedov45',now(),null,null),
       ('Lalə','Qurbanzadə','qurbanovalale87@gmail.com',994555429532,'paslale45',now(),null,null),
       ('Zemfira','Cəlilova','zemcc34mail@ru',994709537189,'zemcelilhh',now(),null,null);
insert into currencies(Id,Name, Created_at, Updated_at, Deleted_at)
values(1,'Manat',now(),null,null),
      (2,'Dollar',now(),null,null);
insert into salaries (User_id, Salary, Currency_type_id, Created_at, Updated_at, Deleted_at)
values (18,2000,1,now(),null,null),
       (19,2000,1,now(),null,null),
       (20,2000,1,now(),null,null),
       (21,2000,2,now(),null,null),
       (22,2000,2,now(),null,null);
