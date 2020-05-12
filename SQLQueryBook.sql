use libraryproject;

create table artsandmusic ( id int primary key,bookname varchar (50), authorname varchar (50), likes int);

create table biographies ( id int primary key,bookname varchar (50), authorname varchar (50), likes int);

create table business ( id int primary key,bookname varchar (50), authorname varchar (50), likes int);

create table healthandfitness ( id int primary key,bookname varchar (50), authorname varchar (50), likes int);

create table sports ( id int primary key,bookname varchar (50), authorname varchar (50), likes int);

create table literatureandfiction ( id int primary key,bookname varchar (50), authorname varchar (50), likes int);

create procedure insertbook (@id int,@bookname varchar (50),@authorname varchar (50),@booktype varchar(20))

as 

begin 


if (@booktype='artsandmusic')

begin

insert into artsandmusic (id,bookname,authorname,likes) values (@id,@bookname,@authorname,0)

end

else if (@booktype='biographies')

begin

insert into biographies (id,bookname,authorname,likes) values (@id,@bookname,@authorname,0)

end

else if (@booktype='business')

begin

insert into business (id,bookname,authorname,likes) values (@id,@bookname,@authorname,0)

end

else if (@booktype='healthandfitness')

begin

insert into healthandfitness (id,bookname,authorname,likes) values (@id,@bookname,@authorname,0)

end

else if (@booktype='sports')

begin

insert into sports (id,bookname,authorname,likes) values (@id,@bookname,@authorname,0)

end

else 

begin

insert into literatureandfiction (id,bookname,authorname,likes) values (@id,@bookname,@authorname,0)

end

end

exec insertbook 100,'simple','koushik','sports';

drop procedure insertbook;

select * from sports,business,literatureandfiction,healthandfitness,artsandmusic,biographies;

drop table sports;drop table business;drop table literatureandfiction;drop table healthandfitness;drop table artsandmusic;drop table biographies;

create procedure fetchlikes (@booktype varchar(20),@id int)

as 

begin 

if (@booktype='artsandmusic')

begin

select likes from  artsandmusic where id=@id;

end

else if (@booktype='sports')

begin

select likes from  sports where id=@id;

end

else if (@booktype='business')

begin

select likes from  business where id=@id;

end

else if (@booktype='literatureandfiction')

begin

select likes from  literatureandfiction where id=@id;

end

else if (@booktype='healthandfitness')

begin

select likes from  healthandfitness where id=@id;

end

else 

begin

select likes from  biographies where id=@id;

end

end


create procedure updatelikes (@booktype varchar(20),@id int,@num int)

as 

begin 

if (@booktype='artsandmusic')

begin

update artsandmusic set likes=@num where id=@id;

end

else if (@booktype='sports')

begin

update sports set  likes=@num where id=@id;

end

else if (@booktype='business')

begin

update business set  likes=@num where id=@id;

end

else if (@booktype='literatureandfiction')

begin

update literatureandfiction set  likes=@num where id=@id;

end

else if (@booktype='healthandfitness')

begin

update healthandfitness set  likes=@num where id=@id;

end

else 

begin

update biographies set  likes=@num where id=@id;

end

end



