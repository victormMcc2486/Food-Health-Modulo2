CREATE DATABASES ingreso;

USE ingreso;

CREATE TABLE roles(
	idRol int identity not null, 
	nombreRol varchar(30) not null, 
	constraint PK_Primary_Roles primary key (idRol));


CREATE TABLE usuarios (
	idUsuario int identity not null,
	usuario varchar (20) not null,
	clave varchar (20) not null,
	idRol int not null,
	constraint PK_Primary_Usuarios Primary key (idUsuario),
	constraint Unic_Usuario unique (usuario),
	constraint FK_Usuario_Rol foreign key(idRol) references roles(idRol));


CREATE TABLE personas(
	idPersona int identity not null, 
	documento char (10) not null,
	correo varchar(50) not null, 
	nombres varchar(40) not null, 
	direccion varchar(50) not null,
	constraint PK_Primary_Personas Primary key (idPersona),
	constraint Unic_Documento unique (documento),
	constraint Unic_Correo unique (correo));