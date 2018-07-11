create database sistemaRegistro

use sistemaRegistro

select * from Alumnos

select * from Escuela 

select * from Talleres

--/////Tablas/////
create table Alumnos
(
nombre varchar (50) not null,

matricula varchar(50) not null,

telefono varchar(50), 

usuario varchar(50) primary key not null
)

create table Escuela
(
claveEscuela varchar (50) primary key not null,

nombreEscuela varchar (50) not null
)

create table Talleres
(
clavetaller varchar (50) primary key not null ,

nombreTaller varchar (50) not null,

usuariosInscritos int not null, 

LimiteUsuarios int not null -- no puede haber mas inscritos que el limite del taller
)

--/////llaves foraneas///////
alter table Alumnos
add FKTaller varchar (50) foreign key references Talleres 

alter table Alumnos 
alter column FKtaller varchar (50) not null

alter table Alumnos
add FKescuela varchar (50) not null foreign key references Talleres 


--/////Constrains de tabla//////
alter table Alumnos
Add constraint ConsTel Check (datalength(telefono) = 7 or  datalength(telefono) = 10 )

alter table Alumnos 
Add constraint ConsNom Check (datalength(nombre) >= 5 and  datalength(nombre) <= 8 )

alter table Alumnos 
Add constraint  NotnullImprovisado UNIQUE(matricula)

--/////Constraints de tabla talleres/////
alter table Talleres
add constraint DFusuarios default 0 for usuariosInscritos

 alter table Alumnos 
Add constraint ConsNom Check (datalength(nombre) >= 5 and  datalength(nombre) <= 8 )