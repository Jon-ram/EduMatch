CREATE TABLE Usuario (
    idUsuario INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Apellido_P VARCHAR(50) NOT NULL,
    Apellido_M VARCHAR(50) NOT NULL,
    Edad INT NOT NULL,
    Contraseña VARCHAR(255) NOT NULL,
    Correo VARCHAR(100) NOT NULL,
    Telefono VARCHAR(15),
    Rol ENUM('Administrador','Usuario')
);

create table Video(
idVideo INT AUTO_INCREMENT PRIMARY KEY,
Titulo varchar(45), 
URL_video varchar(45) ,
idUsuario int ,
Fecha_publicacion varchar(45) ,
idCarrera int ,
Duracion varchar(45) ,
Descripcion varchar(45),
   FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario),
    FOREIGN KEY (idCarrera) REFERENCES Carrera(idCarrera) 

);


CREATE TABLE Comentario (
    idComentario INT AUTO_INCREMENT PRIMARY KEY,
    idUsuario INT,
    idVideo INT,
    Texto TEXT NOT NULL,
    FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario),
    FOREIGN KEY (idVideo) REFERENCES Video(idVideo)
	
);

create table Reacciones (
idReaccion INT AUTO_INCREMENT PRIMARY KEY,
Tipo varchar(20),
idVideo int ,
idUsuario int ,
Fecha_reaccion date,
  FOREIGN KEY (idUsuario) REFERENCES Usuario(idUsuario),
    FOREIGN KEY (idVideo) REFERENCES Video(idVideo)


);

create table Carrera (
idCarrera INT AUTO_INCREMENT PRIMARY KEY,
Tipo varchar(50),
Duracion Varchar(70),
Descripcion  varchar(200),
Nombre varchar(100)


);


create table Curso (
idCurso  INT AUTO_INCREMENT PRIMARY KEY,
Estado varchar (50),
Titulo Varchar (70),
idCarrera int ,
Fecha_inicio date,
fecha_fin date,
FOREIGN KEY (idCarrera) REFERENCES Carrera(idCarrera)


);
 
 create table Practica (
 idPractica INT AUTO_INCREMENT PRIMARY KEY,
 Titulo varchar (100),
 Fecha_inicio date,
 Fecha_fin date,
 Estado varchar(100),
 Descripcion varchar(150),
 idCurso int,
 FOREIGN KEY (idCurso) REFERENCES Curso(idCurso)
 
 
 );
  
 create table Anuncios (
 idAnuncios INT AUTO_INCREMENT PRIMARY KEY,
 Titulo varchar (70),
 Descripcion varchar(150),
 Fecha_publicacion date,
 Fecha_vencimiento date,
 idVideo int,
  FOREIGN KEY (idVideo) REFERENCES Video(idVideo)
 );
 
  create table Vistas (
 idVista INT AUTO_INCREMENT PRIMARY KEY,
 fecha_reproduccion varchar (70),
 idUsuario int,
 idVideo int,
 totalComentario int,
  FOREIGN KEY (idVideo) REFERENCES Video(idVideo),
   FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario)
 );

create table bitacora_video(
idbitacora_video int auto_increment primary key,
idVideo int,
idUsuario int,
Titulo varchar(50),
fecha time,
comentario varchar(50),
 
);

create table bitacora_usuario (
idbitacora_usuario int auto_increment primary key,
idUsuario int,
nombre varchar(45) ,
fecha date ,
comentario varchar(45),

);
