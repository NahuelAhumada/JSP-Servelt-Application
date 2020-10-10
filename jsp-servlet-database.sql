create database if not exists sproyect_hibenate;
use proyect_hibenate;
create table if not exists files(
id int(12) not null auto_increment, file_name varchar(50) unique, label varchar(50), caption varchar(50), primary key(id)
);
SET global time_zone='-03:00';