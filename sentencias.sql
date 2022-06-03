/* Que tipo de entidades se estan creando? Autores
Nombre: autores */

Nombre
Genero
Fecha de nacimiento
Pais de origen

columna y el tipo de dato 

CREATE TABLE autores (
    autor_id INT,
    nombre VARCHAR(25),
    apellido VARCHAR(25),
    genero CHAR(1), -- M o F
    fecha_nacimiento DATE,
    pais_origen VARCHAR(40)
);

/*Agregando registros a nuestra tabla*/

INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen)
VALUES (1, 'Test autor', 'Test autor', 'M', '2018-01-30', 'Mexico');

INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen)
VALUES (2, 'Test autor', 'Test autor', 'M', '2018-01-30', 'Mexico');

INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen)
VALUES (3, 'Test autor', 'Test autor', 'M', '2018-01-30', 'Mexico');

INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen)
VALUES (4, 'Test autor', 'Test autor', 'M', '2018-01-30', 'Mexico');

INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen)
VALUES (5, 'Test autor', 'Test autor', 'M', '2018-01-30', 'Mexico');


/*Agregando registros a nuestra tabla de otra forma*/

INSERT INTO autores (autor_id, nombre, apellido, genero, fecha_nacimiento, pais_origen)
VALUES  (1, 'Test autor', 'Test autor', 'M', '2018-01-30', 'Mexico'),
        (2, 'Test autor', 'Test autor', 'M', '2018-01-30', 'Mexico'),
        (3, 'Test autor', 'Test autor', 'M', '2018-01-30', 'Mexico'),
        (4, 'Test autor', 'Test autor', 'M', '2018-01-30', 'Mexico'),
        (5, 'Test autor', 'Test autor', 'M', '2018-01-30', 'Mexico');