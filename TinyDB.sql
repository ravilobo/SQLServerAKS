use master 
drop database TinyDB

create database TinyDB 
go 
create table TinyNations(TinyNationsID tinyint identity(1,1), Name varchar(100))
go 
insert into tinyNations (name) values( 'Vatican City')
insert into tinyNations (name) values( 'Monaco')
insert into tinyNations (name) values( 'Nauru')
insert into tinyNations (name) values( 'Tuvalu')
insert into tinyNations (name) values( 'San Marino')
insert into tinyNations (name) values( 'Liechtenstein')
insert into tinyNations (name) values( 'Marshall Islands')
insert into tinyNations (name) values( 'Saint Kitts and Nevis')
insert into tinyNations (name) values( 'Maldives')
insert into tinyNations (name) values( 'Malta')
