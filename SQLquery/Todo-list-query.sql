
create database Todo_list_db;

use Todo_list_db;

show tables;

create table user(
	id int auto_increment not null primary key,
	user_name varchar(255) Not null unique,
    password varchar(255) Not null,
    creation_date DATETIME Not null,
    status enum('active','inactive')
);


drop table user;
desc user;


## insert query 
insert into user(user_name,password, creation_date, status) values ('akshay','testpass','2024-11-28 10:25:00','active'); 

select * from user;


## Delete data
delete from user where id=2;


## Update name
update user set user_name='bhanu' where id=1;

## update password
update user set password='testpass2' where user_name='bhanu';

## update table datatype
alter table user add UNIQUE (user_name);




------------------------------


create table todo(
todo_id int auto_increment not null primary key,
title varchar(255),
description TEXT,
status enum('new','pending','in progress','completed'),
creation_time datetime,
completion_time datetime,
user_id INT,
foreign key (user_id) REFERENCES user(id)
);

desc todo;

select * from todo;

##insert todo
insert into todo values(1,'First task','described','new','2024-11-28 10:25:00','2024-11-28 10:25:00',1);


