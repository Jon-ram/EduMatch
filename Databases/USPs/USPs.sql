-- procedimiento 




-- agregar usuario
DELIMITER //

CREATE PROCEDURE agregarUsuario(
    IN pNombre VARCHAR(50),
    IN pApellido_P VARCHAR(50),
    IN pApellido_M VARCHAR(50),
    IN pEdad INT,
    IN pContraseña VARCHAR(255),
    IN pCorreo VARCHAR(100),
    IN pTelefono VARCHAR(15),
    IN pRol ENUM('Administrador', 'Usuario')
)
BEGIN
    INSERT INTO usuario (
        Nombre, Apellido_P, Apellido_M, Edad, Contraseña, Correo, Telefono, Rol
    ) VALUES (
        pNombre, pApellido_P, pApellido_M, pEdad, pContraseña, pCorreo, pTelefono, pRol
    );
END //

DELIMITER ;

-- actualizar usuario

DELIMITER //

CREATE PROCEDURE actualizarUsuario(
    IN pIdUsuario INT,
    IN pNombre VARCHAR(50),
    IN pApellido_P VARCHAR(50),
    IN pApellido_M VARCHAR(50),
    IN pEdad INT,
    IN pContraseña VARCHAR(255),
    IN pCorreo VARCHAR(100),
    IN pTelefono VARCHAR(15),
    IN pRol ENUM('Administrador', 'Usuario')
)
BEGIN
    UPDATE usuario
    SET 
        Nombre = pNombre,
        Apellido_P = pApellido_P,
        Apellido_M = pApellido_M,
        Edad = pEdad,
        Contraseña = pContraseña,
        Correo = pCorreo,
        Telefono = pTelefono,
        Rol = pRol
    WHERE idUsuario = pIdUsuario;
END //

DELIMITER ;


-- eliminar usuario 


DELIMITER //

CREATE PROCEDURE eliminarUsuario(
    IN pIdUsuario INT
)
BEGIN
    DELETE FROM usuario
    WHERE idUsuario = pIdUsuario;
END //

DELIMITER ;


DELIMITER //


-- buscar usuario
CREATE PROCEDURE buscarUsuario(
    IN pIdUsuario INT,
    IN pNombre VARCHAR(50),
    IN pApellido_P VARCHAR(50),
    IN pApellido_M VARCHAR(50),
    IN pCorreo VARCHAR(100)
)
BEGIN
    SELECT * FROM usuario
    WHERE 
        (pIdUsuario IS NULL OR idUsuario = pIdUsuario) AND
        (pNombre IS NULL OR Nombre = pNombre) AND
        (pApellido_P IS NULL OR Apellido_P = pApellido_P) AND
        (pApellido_M IS NULL OR Apellido_M = pApellido_M) AND
        (pCorreo IS NULL OR Correo = pCorreo);
END //

DELIMITER ;



-- agregar video

DELIMITER //

CREATE PROCEDURE agregarVideo(
    IN pTitulo VARCHAR(45),
    IN pURL_video VARCHAR(45),
    IN pIdUsuario INT,
    IN pFecha_publicacion VARCHAR(45),
    IN pIdCarrera INT,
    IN pDuracion VARCHAR(45),
    IN pDescripcion VARCHAR(45)
)
BEGIN
    INSERT INTO video (
        Titulo, URL_video, idUsuario, Fecha_publicacion, idCarrera, Duracion, Descripcion
    ) VALUES (
        pTitulo, pURL_video, pIdUsuario, pFecha_publicacion, pIdCarrera, pDuracion, pDescripcion
    );
END //

DELIMITER ;

-- actualizar video

DELIMITER //

CREATE PROCEDURE actualizarVideo(
    IN pIdVideo INT,
    IN pTitulo VARCHAR(45),
    IN pURL_video VARCHAR(45),
    IN pIdUsuario INT,
    IN pFecha_publicacion VARCHAR(45),
    IN pIdCarrera INT,
    IN pDuracion VARCHAR(45),
    IN pDescripcion VARCHAR(45)
)
BEGIN
    UPDATE videos
    SET 
        Titulo = pTitulo,
        URL_video = pURL_video,
        idUsuario = pIdUsuario,
        Fecha_publicacion = pFecha_publicacion,
        idCarrera = pIdCarrera,
        Duracion = pDuracion,
        Descripcion = pDescripcion
    WHERE idVideo = pIdVideo;
END //

DELIMITER ;

-- eliminar video 

DELIMITER //

CREATE PROCEDURE eliminarVideo(
    IN pIdVideo INT
)
BEGIN
    DELETE FROM videos
    WHERE idVideo = pIdVideo;
END //

DELIMITER ;

-- buscar video 

DELIMITER //

CREATE PROCEDURE buscarVideo(
    IN pIdVideo INT,
    IN pTitulo VARCHAR(45),
    IN pIdUsuario INT,
    IN pIdCarrera INT
)
BEGIN
    SELECT * FROM videos
    WHERE 
        (pIdVideo IS NULL OR idVideo = pIdVideo) AND
        (pTitulo IS NULL OR Titulo = pTitulo) AND
        (pIdUsuario IS NULL OR idUsuario = pIdUsuario) AND
        (pIdCarrera IS NULL OR idCarrera = pIdCarrera);
END //

DELIMITER ;


-- agregar curso 

DELIMITER //
CREATE PROCEDURE agregar_curso(
    IN p_Estado VARCHAR(50),
    IN p_Titulo VARCHAR(70),
    IN p_idCarrera INT,
    IN p_Fecha_inicio DATE,
    IN p_fecha_fin DATE
)
BEGIN
    INSERT INTO curso (Estado, Titulo, idCarrera, Fecha_inicio, fecha_fin)
    VALUES (p_Estado, p_Titulo, p_idCarrera, p_Fecha_inicio, p_fecha_fin);
END //
DELIMITER ;

-- actualiza curso 

DELIMITER //
CREATE PROCEDURE actualizar_curso(
    IN p_idCurso INT,
    IN p_Estado VARCHAR(50),
    IN p_Titulo VARCHAR(70),
    IN p_idCarrera INT,
    IN p_Fecha_inicio DATE,
    IN p_fecha_fin DATE
)
BEGIN
    UPDATE curso
    SET Estado = p_Estado,
        Titulo = p_Titulo,
        idCarrera = p_idCarrera,
        Fecha_inicio = p_Fecha_inicio,
        fecha_fin = p_fecha_fin
    WHERE idCurso = p_idCurso;
END //
DELIMITER ;

-- eliminar curso 

DELIMITER //
CREATE PROCEDURE eliminar_curso(
    IN p_idCurso INT
)
BEGIN
    DELETE FROM curso
    WHERE idCurso = p_idCurso;
END //
DELIMITER ;

-- buscar curso


DELIMITER //
CREATE PROCEDURE buscar_curso(
    IN p_idCurso INT
)
BEGIN
    SELECT * FROM curso
    WHERE idCurso = p_idCurso;
END //
DELIMITER ;

-- agregar anuncio

DELIMITER //
CREATE PROCEDURE agregar_anuncio(
    IN p_Titulo VARCHAR(70),
    IN p_Descripcion VARCHAR(150),
    IN p_Fecha_publicacion DATE,
    IN p_Fecha_vencimiento DATE,
    IN p_idVideo INT
)
BEGIN
    INSERT INTO anuncio (Titulo, Descripcion, Fecha_publicacion, Fecha_vencimiento, idVideo)
    VALUES (p_Titulo, p_Descripcion, p_Fecha_publicacion, p_Fecha_vencimiento, p_idVideo);
END //
DELIMITER ;


-- actualizar curso

DELIMITER //
CREATE PROCEDURE actualizar_anuncio(
    IN p_idAnuncio INT,
    IN p_Titulo VARCHAR(70),
    IN p_Descripcion VARCHAR(150),
    IN p_Fecha_publicacion DATE,
    IN p_Fecha_vencimiento DATE,
    IN p_idVideo INT
)
BEGIN
    UPDATE anuncio
    SET Titulo = p_Titulo,
        Descripcion = p_Descripcion,
        Fecha_publicacion = p_Fecha_publicacion,
        Fecha_vencimiento = p_Fecha_vencimiento,
        idVideo = p_idVideo
    WHERE idAnuncio = p_idAnuncio;
END //
DELIMITER ;

-- eliminar anuncio 
DELIMITER //
CREATE PROCEDURE eliminar_anuncio(
    IN p_idAnuncio INT
)
BEGIN
    DELETE FROM anuncio
    WHERE idAnuncio = p_idAnuncio;
END //
DELIMITER ;

-- buscar anuncio 

DELIMITER //
CREATE PROCEDURE buscar_anuncio(
    IN p_idAnuncio INT
)
BEGIN
    SELECT * FROM anuncio
    WHERE idAnuncio = p_idAnuncio;
END //
DELIMITER ;

