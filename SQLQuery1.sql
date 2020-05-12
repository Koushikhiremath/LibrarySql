create database libraryproject;

use libraryproject;

create table user_login ( username varchar(50),email varchar (50) primary key, password varchar (50), role varchar (10));

select * from user_login;

drop table user_login;

create procedure signup (@username varchar(50),@email varchar(50),@password varchar(50),@role varchar(10))

as 

begin 

insert into user_login (username,email,password,role) values (@username,@email,@password,@role)

end

drop procedure signup

exec signup 'koushik','koushikhiremath@gmail.com','koushik123','admin';

select email,password,role from user_login;