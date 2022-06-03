DROP DATABASE IF EXISTS libreria_cf;
CREATE DATABASE libreria_cf;

USE libreria_cf;

CREATE TABLE autores (
    autor_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT, /*Para especificar numeros sin signo UNSIGNED, PRIMARY KEY para convertir esta columna en una llave primaria y AUTO_INCREMENT para incrementar en 1 el valor, asique el valor de la columna ya no se requiere especificar en la tabla*/
    nombre VARCHAR(25) NOT NULL, /*Para especificar que el campo es obligatorio NOT NULL*/
    apellido VARCHAR(25) NOT NULL,
    genero ENUM('M', 'F'), -- M o F /*para especificar solo un tipo de dato, sea m o f */
    fecha_nacimiento DATE NOT NULL,
    pais_origen VARCHAR(40) NOT NULL,
    fecha_creacion DATETIME DEFAULT current_timestamp
);

CREATE TABLE libros (
    libro_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT, /*Para especificar numeros sin signo UNSIGNED, PRIMARY KEY para convertir esta columna en una llave primaria y AUTO_INCREMENT para incrementar en 1 el valor, asique el valor de la columna ya no se requiere especificar en la tabla*/
    autor_id INT UNSIGNED NOT NULL, /*llave foranea*/
    titulo VARCHAR(25) NOT NULL, /*Para especificar que el campo es obligatorio NOT NULL*/
    descripcion VARCHAR(250),
    paginas INTEGER UNSIGNED,
    fecha_publicacion DATE NOT NULL,
    fecha_creacion DATETIME DEFAULT current_timestamp, /*Siempre debe de existir una fecha_creacion para nuestra tabla independientemente del contenido de esta*/
    FOREIGN KEY (autor_id) REFERENCES autores(autor_id)
    /*FOREIGN KEY (columna) REFERENCES tabla_referencia (llave primaria)*/ 
);

INSERT INTO autores (nombre, apellido, genero, fecha_nacimiento, pais_origen)
VALUES  ('Test autor', 'Test autor', 'f', '2018-01-30', 'Mexico'),
        ('Test autor', 'Test autor', 'M', '2018-01-30', 'Mexico'),
        ('Test autor', 'Test autor', 'M', '2018-01-30', 'Mexico'),
        ('Test autor', 'Test autor', 'M', '2018-01-30', 'Mexico'),
        ('Test autor', 'Test autor', 'M', '2018-01-30', 'Mexico');

INSERT INTO libros (autor_id, titulo, fecha_publicacion)
VALUES  (1, 'Test libro', '2012-03-10'),
        (1, 'Test libro', '2012-03-10'),
        (1, 'Test libro', '2012-03-10'),

        (2, 'Test libro', '2012-03-10'),
        (2, 'Test libro', '2012-03-10'),
        (2, 'Test libro', '2012-03-10');/*Solo se pueden ingresar datos que correspondan a la llave primaria no podriamos agragar un id 100 porque no existe en nuestra tabla actual, solo hasta el numero 5 en este caso*/ 

SELECT * FROM autores;
SELECT * FROM libros;