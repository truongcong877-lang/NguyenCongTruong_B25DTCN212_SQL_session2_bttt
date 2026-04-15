create database library;
use library;

create table books(
   bookId int primary key,
   bookName varchar(100) not null,
   quantity int not null check(quantity >= 0),
   rent decimal(10, 2) default 5000
);

alter table books
add entryDate date;

create table borrowBooks(
   borrowId int auto_increment primary key,
   borrowedDay date default (current_date),
   foreign key (bookId) references books (bookId)
);