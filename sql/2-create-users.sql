--Creamos usuario 
CREATE USER 'toreohm'@'localhost' IDENTIFIED BY '123456';

-- Eliminamos usuario
DROP USER 'toreohm'@'localhost';

-- Dar privilegios a usuario
GRANT ALL PRIVILEGES ON *.* TO 'toreohm'@'localhost';

--Activar los privilegios
FLUSH PRIVILEGES;

