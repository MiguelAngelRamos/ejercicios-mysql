-- Para crear una base de datos
CREATE DATABASE cuidado_verde_db;
-- Creamos un usuario con todos los privilegios hacia la base de datos cuidado_verde_db
CREATE USER 'jardinero_master'@'localhost' IDENTIFIED BY 'planta$Segura';
-- Otorgar todos los permisos al usuario jardinero_master hacia la base de datos cuidado_verde_db
GRANT ALL PRIVILEGES ON cuidado_verde_db.* TO 'jardinero_master'@'localhost';
FLUSH PRIVILEGES;



SHOW DATABASES;
-- Indicamos que queremos utilizar la base de datos cuidado_verde_db
USE cuidado_verde_db;
-- DROP DATABASE cuidado_verde_db; (con este comando eliminamos la base de datos)
-- Creamos la tabla Empleados

CREATE TABLE empleados (
	EmpleadoID INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(50),
    Apellido VARCHAR(50),
    Especialidad VARCHAR(100),
    Contacto VARCHAR(100)
);

SHOW TABLES; -- Listamos las tablas de la base de datos
DESCRIBE empleados; -- Describimos los atributos y especificaciones de la tabla
-- DROP TABLE empleados; -- Eliminamos Tabla
-- ALTER TABLE empleados RENAME COLUMN Especial TO Especialidad; -- Cambiar el nombre de una columna de la tabla

-- VAMOS A INSERTAR REGISTROS
-- DEL ACRONIMO CRUD "CREATE"
INSERT INTO empleados (Nombre, Apellido, Especialidad, Contacto) VALUES ('Sofia', 'Araya', 'Botánica', 'sofia.araya@cuidadoverde.com');
INSERT INTO empleados (Nombre, Apellido, Especialidad, Contacto) VALUES
('Ana', 'Flores', 'Botánica', 'ana.flores@cuidadoverde.com'),
('Luis', 'Jardín', 'Paisajista', 'luis.jardin@cuidadoverde.com'),
('Carla', 'Hojas', 'Horticultora', 'carla.hojas@cuidadoverde.com'),
('Pedro', 'Madera', 'Arborista', 'pedro.madera@cuidadoverde.com');
-- READ (leer)
SELECT * FROM empleados;

CREATE TABLE clientes (
	ClienteID INT AUTO_INCREMENT PRIMARY KEY,
    NombreEmpresa VARCHAR(100),
    Direccion VARCHAR(255),
    Contacto VARCHAR(100)
);

INSERT INTO clientes (NombreEmpresa, Direccion, Contacto) VALUES
('Hoteles Paraiso', 'Ruta las Palmas 252', 'reservas@hotelparaiso.com');

INSERT INTO clientes (NombreEmpresa, Direccion, Contacto) VALUES
('Edificios Verdes S.A.', 'Calle Roble 123', 'contacto@edificiosverdes.com'),
('Casas Ecológicas Ltda.', 'Avenida Las Flores 456', 'info@casasecologicas.com'),
('Oficinas Modernas Inc.', 'Boulevard Jardines 789', 'servicio@oficinasmodernas.com'),
('Condominios La Pradera', 'Alameda Los Pinos 101', 'pradera@condominioslapradera.com');

SELECT * FROM clientes;

CREATE TABLE plantas(
	PlantaID INT AUTO_INCREMENT PRIMARY KEY,
    NombreComun VARCHAR(100),
    NombreCientifico VARCHAR(255),
    Tipo VARCHAR(100)
);

-- ALTER TABLE plantas RENAME COLUMN NombreEmpresa TO NombreComun; -- Cambiar el nombre de una columna de la tabla
-- ALTER TABLE plantas RENAME COLUMN Direccion TO NombreCientifico;
-- ALTER TABLE plantas RENAME COLUMN Contacto TO Tipo;

DESCRIBE plantas;
-- Create
INSERT INTO plantas (NombreComun, NombreCientifico, Tipo) VALUES ('Lengua de Suegra', 'Dracaena trifasciata', 'Dracaena');
INSERT INTO plantas (NombreComun, NombreCientifico) VALUES ('Ficus', 'Ficus benjamina');
INSERT INTO plantas (NombreComun, NombreCientifico, Tipo) VALUES 
('Palmera', 'Chamaedorea elegans', 'Interior'),
('Cactus', 'Cactaceae', 'Exterior'),
('Orquídea', 'Orchidaceae', 'Interior'),
('Bambú', 'Bambusoideae', 'Exterior');
-- Update
UPDATE plantas SET Tipo = 'Dracaena' WHERE PlantaID = '1';
-- READ 
SELECT * FROM plantas;

-- DELETE
DELETE FROM plantas WHERE PlantaId = 2; -- ELIMINACIÓN FISICA.

SHOW DATABASES;
DROP DATABASE cuidado_verde_db;


-- CONSULTAS

SELECT * FROM clientes;
SELECT * FROM empleados;
SELECT * FROM plantas;
