/* 1.Escribir una consulta que recupere los vuelos y su identificador y que figuren con el status "ontime" */
SELECT flight_id, flight_no, status
FROM flights
WHERE STATUS = "On Time"; /* TOTAL 518 FILAS*/ 

/* 2. Extraer todas las columnas de la tabla reservas (bookings) y se reflejen todas las reservas que han supuesto una cantidad mayor a un millon de unidades monetarias */
SELECT *
FROM bookings
WHERE total_amount > 999999; /* TOTAL 5 FILAS*/ 

/* 3. Ejecuta una consulta donde se muestren todas las columnas de los modelos de aviones disponibles */
SELECT *
FROM aircrafts_data; /* TOTAL 9 FILAS*/

/* 4. Según la consulta anterior escribir una consulta que extraiga los identificadores de vuelo que han volado con un Boing 737 o 733 */
SELECT flight_id, flight_no
FROM flights
WHERE airfract_code = '733'; /* TOTAL 1274 FILAS*/

/* 5. Extrae una consulta que muestre lainformación detallada de los ticket que han comprado los usuarios llamados Virina  */
SELECT *
FROM tickets
WHERE passenger_name LIKE 'IRINA%'; /* TOTAL 7034 FILAS*/ 