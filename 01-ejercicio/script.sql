-- Para crear una base de datos
CREATE DATABASE cuidado_verde_db;
-- Creamos un usuario con todos los privilegios hacia la base de datos cuidado_verde_db
CREATE USER 'jardinero_master'@'localhost' IDENTIFIED BY 'planta$Segura';
-- Otorgar todos los permisos al usuario jardinero_master hacia la base de datos cuidado_verde_db
GRANT ALL PRIVILEGES ON cuidado_verde_db.* TO 'jardinero_master'@'localhost';
FLUSH PRIVILEGES;