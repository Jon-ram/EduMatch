-- Despues de insertar un video 

CREATE DEFINER=`root`@`localhost` TRIGGER `after_video_insert` AFTER INSERT ON `video` FOR EACH ROW BEGIN
    INSERT INTO bitacora_video (idVideo, idUsuario, titulo, fecha, comentario)
    VALUES (NEW.idVideo, NEW.idUsuario, NEW.titulo, curdate(), 'Se subió un video');
END

-- Despues de eliminar un video 

CREATE DEFINER=`root`@`localhost` TRIGGER `after_video_delete` AFTER DELETE ON `video` FOR EACH ROW BEGIN
    INSERT INTO bitacora_video (idVideo, idUsuario, titulo, fecha, comentario)
    VALUES (OLD.idVideo, OLD.idUsuario, OLD.titulo, curdate(), 'Se eliminó un video');
END

-- Despues de inserta un usuario 
CREATE DEFINER=`root`@`localhost` TRIGGER `after_usuario_insert` AFTER INSERT ON `usuario` FOR EACH ROW BEGIN
    INSERT INTO bitacora_usuario (idUsuario, nombre, fecha, comentario)
    VALUES (NEW.idUsuario, CONCAT(NEW.Nombre, ' ', NEW.Apellido_P, ' ', NEW.Apellido_M), CURDATE(), 'Nuevo usuario agregado');
END

-- Despues de actualizar un usuario 
CREATE DEFINER=`root`@`localhost` TRIGGER `after_usuario_update` AFTER UPDATE ON `usuario` FOR EACH ROW BEGIN
    INSERT INTO bitacora_usuario (idUsuario, nombre, fecha, comentario)
    VALUES (NEW.idUsuario, CONCAT(NEW.Nombre, ' ', NEW.Apellido_P, ' ', NEW.Apellido_M), CURDATE(), ' usuario actualizado');
END


-- Despues de eliminar un usuario 

CREATE DEFINER=`root`@`localhost` TRIGGER `after_usuario_delete` AFTER DELETE ON `usuario` FOR EACH ROW BEGIN
    INSERT INTO bitacora_usuario (idUsuario, nombre, fecha, comentario)
    VALUES (OLD.idUsuario, CONCAT(OLD.Nombre, ' ', OLD.Apellido_P, ' ', OLD.Apellido_M), CURDATE(), 'Nuevo usuario agregado');
END
