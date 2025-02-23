USE ENTREGAS;

START TRANSACTION;

INSERT INTO cliente (id_cliente, nombre, email, telefono, domicilio, cumple) 
VALUES (6, 'LUIS SUAREZ', 'luis.suarez@example.com', 1122334455, 'Av. Libertador 456', '1987-01-24');

COMMIT;

START TRANSACTION;

UPDATE producto
SET precio = 7.80
WHERE id_producto = 5;

COMMIT;


START TRANSACTION;

-- la venta salio mal, porque no hay suficiente stock--
INSERT INTO venta (id_cliente, id_producto, cantidad, fecha_venta)
VALUES (4, 5, 50, '2025-02-15');

ROLLBACK;


