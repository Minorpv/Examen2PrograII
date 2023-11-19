CREATE DATABASE PlatReparacion
GO

CREATE TABLE usuario
(
		usuarioID int identity(100,1) PRIMARY KEY,
		nombre varchar(20) NOT NULL,
		correo varchar(50),
		telefono varchar(11),
)
GO


CREATE TABLE tecnicos
(
	tecnicosID int identity (1,1) PRIMARY KEY,
	nombre varchar (20) NOT NULL,
	especialidad varchar (20) NOT NULL,
)
GO

CREATE TABLE equipos
(
	equiposID int identity (1000,1) PRIMARY KEY,
	tipodeEquipo varchar (20),
	modelo varchar (20),
	usuarioID int,
	CONSTRAINT fk_usuarioID FOREIGN KEY (usuarioID) REFERENCES usuario(usuarioID),
)
GO

CREATE TABLE reparaciones
(
	reparacionesID int identity (1,1) PRIMARY KEY,
	equipoID int NOT NULL,
	fechaSolicitud date NOT NULL DEFAULT GETDATE(),
	estado varchar (10),
	CONSTRAINT fk_equipoID FOREIGN KEY (equipoID) REFERENCES equipos(equiposID),
)
GO

CREATE TABLE detalleReparacion
(
	detalleReparacionID int identity (100,1) PRIMARY KEY,
	reparacionID int NOT NULL,
	descripcion varchar (25) NOT NULL,
	fechaInicio date DEFAULT GETDATE(),
	fechaFinal date DEFAULT GETDATE(),
	CONSTRAINT fk_reparacionID FOREIGN KEY (reparacionID) REFERENCES reparaciones(reparacionesID),

)
GO

CREATE TABLE asignaciones
(
	asignacionesID int identity (1,1),
	reparacionID int,
	tecnicoID int,
	fechaAsignacion date DEFAULT GETDATE(),
	CONSTRAINT fk_reparacionIDAs FOREIGN KEY (reparacionID) REFERENCES reparaciones(reparacionesID),
	CONSTRAINT fk_tecnicoID FOREIGN KEY (tecnicoID) REFERENCES tecnicos(tecnicosID),
)
GO

USE PlatReparacion
GO