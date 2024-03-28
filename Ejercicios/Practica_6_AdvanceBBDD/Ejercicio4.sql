/* 1. Crea una tabla llamada "Pedidos" con las columnas: "id" (entero, clave primaria), "id_usuario" (entero, clave foránea de la tabla "Usuarios") y "id_producto" (entero, clave foránea de la tabla "Productos").*/
CREATE TABLE IF NOT EXISTS Pedidos (
      id INT PRIMARY KEY NOT NULL,
      id_usuario INT,
      id_producto INT,
      CONSTRAINT FK_id_usuario FOREIGN KEY (id_usuario) REFERENCES Usuarios (id),
      CONSTRAINT FK_id_producto FOREIGN KEY (id_producto) REFERENCES Productos (id)
)

/* 2. Inserta al menos tres registros en la tabla "Pedidos" que relacionen usuarios con productos.*/
INSERT INTO public.pedidos(id, id_usuario, id_producto)
VALUES (1, 1, 1);

INSERT INTO public.pedidos(id, id_usuario, id_producto)
VALUES (2, 1, 2);

INSERT INTO public.pedidos(id, id_usuario, id_producto)
VALUES (3, 2, 2);

/* 3. Realiza una consulta que muestre los nombres de los usuarios y los nombres de los productos que han comprado, incluidos aquellos que no han realizado ningún pedido (utiliza LEFT JOIN y COALESCE).*/
SELECT public.usuarios.nombre as Nombre_Usuario, COALESCE(public.productos.'--') as Productos_Cogidos
FROM public.usuarios
LEFT JOIN public.productos ON public.usuarios.id_usuario = public.productos.id_productos
LEFT JOIN public.pedidos ON public.productos.id_productos = public.pedidos.id

/* 4. Realiza una consulta que muestre los nombres de los usuarios que han realizado un pedido, pero también los que no han realizado ningún pedido (utiliza LEFT JOIN).*/
SELECT public.usuarios.nombre as Nombre_Usuario, COALESCE(public.pedidos.'--') as Pedidos_Realizados
FROM public.usuarios
LEFT JOIN public.pedidos ON public.usuarios.id_usuario = public.pedidos.id

/* 5. Agrega una nueva columna llamada "cantidad" a la tabla "Pedidos" y actualiza los registros existentes con un valor (utiliza ALTER TABLE y UPDATE) */
ALTER TABLE Pedidos
ADD cantidad INT;

UPDATE Pedidos
SET cantidad = 1