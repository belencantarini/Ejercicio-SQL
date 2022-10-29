-- Creo mi base de datos
create database ejercicioDB;

-- Borro mi base de datos
drop database ejercicioDB;

-- Uso mi base de datos
use ejercicioDB;

-- Creo mi tabla en la base de datos que estoy usando
create table tablaRegistrosDB
(
id INT(11) not null auto_increment primary key,
nombre VARCHAR(40),
apellido VARCHAR(40),
edad tinyint(2),
fecha timestamp not null default current_timestamp,
provincia VARCHAR(30)
)

-- Ingreso mis 5 registros
insert into tablaRegistrosDB (nombre, apellido, edad, provincia) values ('Romina', 'Dadi', 36, 'CABA');
insert into tablaRegistrosDB (nombre, apellido, edad, provincia) values ('Damian', 'Gomez', 44, 'Cordoba');
insert into tablaRegistrosDB (nombre, apellido, edad, provincia) values ('Cristina', 'Hernandez', 75, 'Buenos Aires');
insert into tablaRegistrosDB (nombre, apellido, edad, provincia) values ('Juan', 'Lopez', 36, 'Santa Cruz');
insert into tablaRegistrosDB (nombre, apellido, edad, provincia) values ('Jeremias', 'Hournou', 16, 'Chubut');
insert into tablaRegistrosDB (nombre, apellido, edad, provincia) values ('Emanuel', 'Carames', 38, 'Misiones');

-- Mostrar mi tabla
use ejercicioDB;
show tables;
show fields from tablaRegistrosDB;

-- Borrar elementos de mi table
delete from tablaRegistrosDB where nombre = 'Emanuel';

-- modificar mi tabla
alter table tablaregistrosdb add sueldo int(11);

update tablaregistrosdb set sueldo=120000 where nombre='Romina';
update tablaregistrosdb set sueldo=500000 where apellido='Hernandez';
update tablaregistrosdb set sueldo=100000 where id='2';
update tablaregistrosdb set sueldo=120000 where provincia ='Chubut';

