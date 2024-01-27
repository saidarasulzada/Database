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
