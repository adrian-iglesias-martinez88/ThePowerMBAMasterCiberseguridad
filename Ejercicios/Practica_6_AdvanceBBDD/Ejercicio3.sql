/* Nivel de dificultad: Difícil */
/* 1. Crea una tabla llamada "Productos" con las columnas: "id" (entero, clave primaria), "nombre" (texto) y "precio" (numérico).*/
CREATE TABLE IF NOT EXISTS Productos (
      id INT PRIMARY KEY NOT NULL,
      nombre VARCHAR(255),
      precio DECIMAL
)
/* 2. Inserta al menos cinco registros en la tabla "Productos".*/
INSERT INTO public.productos(id, nombre, precio)
VALUES (1, 'Billete', 150);

INSERT INTO public.productos(id, nombre, precio)
VALUES (2, 'Maleta', 100);

INSERT INTO public.productos(id, nombre, precio)
VALUES (3, 'Neceser', 25);

INSERT INTO public.productos(id, nombre, precio)
VALUES (4, 'Pantalones', 65);

INSERT INTO public.productos(id, nombre, precio)
VALUES (5, 'Zapatillas', 87);

/* 3. Actualiza el precio de un producto en la tabla "Productos".*/
UPDATE public.productos
SET precio = 90
WHERE nombre LIKE 'Zapatillas'

/* 4. Elimina un producto de la tabla "Productos".*/
DELETE FROM public.productos
WHERE nombre LIKE 'Neceser'

/* 5. Realiza una consulta que muestre los nombres de los usuarios junto con los nombres de los productos que han comprado (utiliza un INNER JOIN con la tabla "Productos").*/
SELECT public.usuarios.nombre as Nombre_Usuario, public.productos.nombre as Nombre_Producto
FROM public.usuarios
INNER JOIN public.productos ON public.usuarios.id = public.productos.productos_id