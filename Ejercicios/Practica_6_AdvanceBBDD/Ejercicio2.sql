/* Nivel de dificultad: Fácil */
/* 1. Crea una base de datos llamada "MiBaseDeDatos".*/
create database MiBaseDeDatos

/* 2. Crea una tabla llamada "Usuarios" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "edad" (entero).*/
CREATE TABLE IF NOT EXISTS Usuarios (
      id INT PRIMARY KEY NOT NULL,
      nombre VARCHAR(255),
      edad INT
)

/*3. Inserta dos registros en la tabla "Usuarios".*/
INSERT INTO public.usuarios(id, nombre, edad)
VALUES (1, 'Susana', 25);

INSERT INTO public.usuarios(id, nombre, edad)
VALUES (2, 'Victor', 37);

/* 4. Actualiza la edad de un usuario en la tabla "Usuarios".*/
UPDATE public.usuarios
SET edad = 45
WHERE nombre LIKE 'Susana'

5. Elimina un usuario de la tabla "Usuarios".
DELETE FROM public.usuarios
WHERE nombre LIKE 'Victor'

/* Nivel de dificultad: Moderado */
/* 1. Crea una tabla llamada "Ciudades" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "pais" (texto).*/
CREATE TABLE IF NOT EXISTS Ciudades (
      id INT PRIMARY KEY NOT NULL,
      nombre VARCHAR(255),
      pais VARCHAR(255)
)

/* 2. Inserta al menos tres registros en la tabla "Ciudades".*/
INSERT INTO public.ciudades(id, nombre, pais)
VALUES (1, 'Paris', 'Francia');

INSERT INTO public.ciudades(id, nombre, pais)
VALUES (2, 'Berlin', 'Alemania');

INSERT INTO public.ciudades(id, nombre, pais)
VALUES (3, 'Roma', 'Italia');

/*3. Crea una foreign key en la tabla "Usuarios" que se relacione con la columna "id" de la tabla "Ciudades".*/
ALTER TABLE Usuarios
ADD CONSTRAINT FK_Usuarios_Ciudades
FOREIGN KEY (id) REFERENCES Ciudades(id);

/* 4. Realiza una consulta que muestre los nombres de los usuarios junto con el nombre de su ciudad y país (utiliza un LEFT JOIN).*/
SELECT public.usuarios.nombre as Nombre_Cliente, public.ciudades.nombre as Nombre_Ciudad, public.ciudades.pais as Nombre_Pais
FROM public.usuarios
LEFT JOIN public.ciudades ON public.usuarios.id = public.ciudades.id

/* 5. Realiza una consulta que muestre solo los usuarios que tienen una ciudad asociada (utiliza un INNER JOIN).*/
SELECT public.usuarios.nombre as Nombre_Cliente, public.ciudades.nombre as Nombre_Ciudad
FROM public.usuarios
INNER JOIN public.ciudades ON public.usuarios.id = public.ciudades.id
WHERE ciudades.nombre is NOT NULL