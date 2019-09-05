CREATE DATABASE food_health_modulo2;

USE food_health_modulo2;

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
    idUsuario int not null,
	constraint PK_Primary_PersoJKnas Primary key (idCliente),
    constraint FK_Clientes_Usuarios Foreign key (idUsuario) References usuarios(idUsuario),
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


INSERT INTO roles (nombreRol) values
	('Administrador'),
	('Cliente'),
	('Chef'),
	('Cocinero');


INSERT INTO usuarios(usuario, clave, idRol) values
	('Smith', '1234', 1),
	('Richard', '1234', 2),
	('Alex', '1234', 2),
	('Vmc', '1234', 2);
	
	
INSERT INTO clientes(documento, correo, nombres,direccion,telefono, idUsuario) values
	('1011146473', 'victoria@gmail.com','victoria mela','bello','3186673434', 2),
	('6875746532', 'qqqqqqqq@gmail.com','carliños mela','bello','3186673434', 3),
	('1234247896', 'gggggggg@gmail.com','mande mela','bello','3186673434', 4);



INSERT INTO tipo_alimentos(nombretipo) values
	('Comestibles'),
	('Bebidas');


INSERT INTO alimentos(nombre, idTipo, detalles) values
	('Papa', '1', 'Buena'),
	('Arroz', '1', 'Full'),
	('Jugo', '1', 'Bueno');



INSERT INTO cocineros(documento, correo, nombres,direccion,telefono) values
	('1001546473', 'iyiio@gmail.com','Maria godinez','medellin','3186673434'),
	('8756465346', 'kjhjk@gmail.com','Luis godinez','medellin','3186673434'),
	('1234567808', 'sdfgh@gmail.com','Carlos godinez','medellin','3186673434');


INSERT INTO chef(documento, correo, nombres,direccion,telefono) values
	('1092834647', 'carlos@gmail.com','Carlos henao','medellin','3205467878'),
	('0987654322', 'llllll@gmail.com','Richard godinez','medellin','3205467878'),
	('6789065123', 'jjjjjj@gmail.com','Pepito feo','medellin','3205467878');
	
