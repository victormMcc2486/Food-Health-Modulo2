CREATE DATABASE modulo2;

USE modulo2;

CREATE TABLE roles(
	idRol int identity not null, 
	nombreRol varchar(30) not null, 
	constraint PK_Primary_Roles primary key (idRol));


CREATE TABLE usuarios (
	idUsuario int identity primary key not null,
	usuario varchar (20) not null,
	clave varchar (20) not null,
	idRol int not null,
	constraint Unic_Usuario unique (usuario),
	constraint FK_Usuario_Rol foreign key(idRol) references roles(idRol));


CREATE TABLE cocineros(
	idCocineros int identity not null, 
	documento char (10) not null,
	correo varchar(50) not null, 
	nombres varchar(40) not null, 
	direccion varchar(50) not null,
	telefono varchar (20) not null,
	constraint PK_Primary_Personas Primary key (idCocineros),
	constraint Unic_Documento unique (documento),
	constraint Unic_Correo unique (correo));

CREATE TABLE chef(
	idChef int identity not null, 
	documento char (10) not null,
	correo varchar(50) not null, 
	nombres varchar(40) not null, 
	direccion varchar(50) not null,
	telefono varchar (20) not null,
	constraint PK_Primary_LL Primary key (idChef),
	constraint Unic_DocumenKKto unique (documento),
	constraint Unic_CoLK unique (correo));

CREATE TABLE clientes(
	idCliente int identity not null, 
	documento char (10) not null,
	correo varchar(50) not null, 
	nombres varchar(40) not null, 
	direccion varchar(50) not null,
	telefono varchar (20) not null,
	constraint PK_Primary_PersoJKnas Primary key (idCliente),
	constraint Unic_DoKOcumento unique (documento),
	constraint Unic_CorreHOo unique (correo));


CREATE TABLE tipo_alimentos(
	idTipo int identity not null, 
	nombretipo varchar(30) not null, 
	constraint PK_Primary_RolJes primary key (idTipo));


CREATE TABLE alimentos(
	idAlimentos int identity not null, 
	nombre varchar(40) not null, 
	idTipo int not null,
	detalles varchar (20) not null,
	constraint PK_Primary_PeKLrsonas Primary key (idAlimentos),
	constraint FK_Primary_Tipo foreign key(idTipo) references tipo_alimentos(idTipo));