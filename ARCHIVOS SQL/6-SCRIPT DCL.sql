
CREATE USER "usuariopro"@"localhost" identified BY "1832";

CREATE USER "usuariobasic"@"localhost" identified by "1824";

GRANT ALL PRIVILEGES ON entregas.* TO 'usuariopro'@'localhost';
GRANT SELECT ON entregas.* TO 'usuariobasic'@'localhost';

FLUSH PRIVILEGES;
