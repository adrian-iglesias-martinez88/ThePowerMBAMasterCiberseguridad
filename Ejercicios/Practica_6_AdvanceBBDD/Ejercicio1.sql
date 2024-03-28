/* 1. Crear una tabla llamada "Clientes" con las columnas: id (entero, clave primaria), nombre (texto) y email (texto).*/
CREATE TABLE IF NOT EXISTS Clientes (
      id INT PRIMARY KEY NOT NULL,
      nombre VARCHAR(255),
      email VARCHAR(255)
)

/* 2. Insertar un nuevo cliente en la tabla "Clientes" con id=1, nombre="Juan" y email="juan@example.com". */
INSERT INTO public.clientes(id, nombre, email)
VALUES (1, 'Juan', 'juan@example.com')

/*3. Actualizar el email del cliente con id=1 a "juan@gmail.com".*/
UPDATE public.clientes
SET email = 'juan@gmail.com'
WHERE id = 1

/*4. Eliminar el cliente con id=1 de la tabla "Clientes".*/
DELETE FROM public.clientes
WHERE id = 1

/*5. Crear una tabla llamada "Pedidos" con las columnas: id (entero, clave primaria), cliente_id (entero, clave externa referenciando a la tabla "Clientes"), producto (texto) y cantidad (entero).*/
CREATE TABLE IF NOT EXISTS Pedidos (
      id INT PRIMARY KEY NOT NULL,
      cliente_id INT,
      producto VARCHAR(255),
      cantidad INT,
      CONSTRAINT FK_cliente_id FOREIGN KEY (cliente_id) REFERENCES Clientes (id)
)

/* 6. Insertar un nuevo pedido en la tabla "Pedidos" con id=1, cliente_id=1, producto="Camiseta" y cantidad=2.*/
INSERT INTO public.pedidos(id, cliente_id, producto, cantidad)
VALUES (1, 1, 'camiseta', 2)

/*7. Actualizar la cantidad del pedido con id=1 a 3.*/
UPDATE public.pedidos
SET cantidad = 3

/* 8. Eliminar el pedido con id=1 de la tabla "Pedidos".*/
DELETE FROM public.pedidos
WHERE id = 1

/* 9. Crear una tabla llamada "Productos" con las columnas: id (entero, clave primaria), nombre (texto) y precio (decimal).*/
CREATE TABLE IF NOT EXISTS Productos (
      id INT PRIMARY KEY NOT NULL,
      nombre VARCHAR(255),
      precio DECIMAL
)

/* 10. Insertar varios productos en la tabla "Productos" con diferentes valores.*/
INSERT INTO public.productos(id, nombre, precio)
VALUES (1, 'huevos', 2.75);

INSERT INTO public.productos(id, nombre, precio)
VALUES (2, 'pan', 0.75);

INSERT INTO public.productos(id, nombre, precio)
VALUES (3, 'harina', 2.05);

INSERT INTO public.productos(id, nombre, precio)
VALUES (4, 'azucar', 1.15)

/* 11. Consultar todos los clientes de la tabla "Clientes".*/
SELECT * FROM clientes

/* 12. Consultar todos los pedidos de la tabla "Pedidos" junto con los nombres de los clientes correspondientes.*/
SELECT public.pedidos.cliente_id as Numero_Cliente, public.clientes.nombre as Nombre_Cliente, public.pedidos.producto as Prenda, public.pedidos.cantidad as Cantidad  
FROM public.clientes
LEFT JOIN public.pedidos ON public.clientes.id = public.pedidos.cliente_id

/* 13. Consultar los productos de la tabla "Productos" cuyo precio sea mayor a $50.*/
SELECT * 
FROM Productos
WHERE precio > 50

/* 14. Consultar los pedidos de la tabla "Pedidos" que tengan una cantidad mayor o igual a 5.*/
SELECT * 
FROM Pedidos
WHERE cantidad >= 50

/* 15. Consultar los clientes de la tabla "Clientes" cuyo nombre empiece con la letra "A".*/
SELECT * FROM public.clientes
WHERE nombre LIKE 'A%'

/* 16. Realizar una consulta que muestre el nombre del cliente y el total de pedidos realizados por cada cliente.*/
SELECT public.clientes.nombre as Nombre_Cliente, count(public.pedidos.id) as Numero_de_Pedidos
FROM public.clientes
LEFT JOIN public.pedidos ON public.clientes.id = public.pedidos.cliente_id
GROUP BY public.clientes.nombre
ORDER BY public.clientes.nombre DESC;

/* 17. Realizar una consulta que muestre el nombre del producto y la cantidad total de pedidos de ese producto.*/
SELECT public.productos.nombre as Nombre_Producto, count(public.pedidos.id) as Cantidad_Total  
FROM public.pedidos
INNER JOIN public.productos ON public.pedidos.cliente_id = public.productos.cliente_producto_id
GROUP BY public.productos.nombre
ORDER BY public.productos.nombre DESC;

/* 18. Agregar una columna llamada "fecha" a la tabla "Pedidos" de tipo fecha.*/
ALTER TABLE Pedidos
ADD fecha DATE;

/* 19. Agregar una clave externa a la tabla "Pedidos" que haga referencia a la tabla "Productos" en la columna "producto".*/
ALTER TABLE Pedidos
ADD FOREIGN KEY (producto_id)
REFERENCES Productos(producto_id);

/* 20. Realizar una consulta que muestre los nombres de los clientes, los nombres de los productos y las cantidades de los pedidos donde coincida la clave externa.*/
SELECT public.clientes.nombre as Nombre_Cliente, public.productos.nombre as Nombre_Producto, public.pedidos.cantidad as Cantidad_Producto
FROM public.clientes
INNER JOIN public.pedidos ON public.clientes.id = public.pedidos.cliente_id
INNER JOIN public.productos ON public.pedidos.cliente_id = public.productos.producto_id
ORDER BY public.productos.nombre DESC;