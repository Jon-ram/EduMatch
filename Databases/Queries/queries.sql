-- seleccionar tabla usuarios
SELECT * FROM usuario;

-- seleccionar cursos disponibles 
select * from cursos where Estado= 'Dsiponible' ;

-- ordena de orden desendente las edades 
SELECT Nombre,Edad FROM usuario ORDER BY Edad  DESC;

-- une dos tablas para comparar 
select c.Nombre,c.Tipo,c.idCarrera,d.Titulo,d.idCurso
from carrera c
join curso d on d.idCarrera= d.idCurso;

-- selecciona usuarios y los categoriza por edad
SELECT nombre, 
       CASE 
           WHEN Edad < 18 THEN 'Menor de edad'
           WHEN Edad BETWEEN 18 AND 30 THEN 'Adulto'
           ELSE 'Mayor de edad'
       END AS CategoriaEdad
FROM usuario;

-- seleciona cursos disponibles
select * from curso where 'No disponible';

