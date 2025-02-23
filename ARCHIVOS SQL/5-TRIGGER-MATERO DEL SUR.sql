USE entregas;

DELIMITER $$

CREATE TRIGGER actualizar_stock_venta
AFTER INSERT ON venta
FOR EACH ROW
BEGIN
    UPDATE producto
    SET cantidad = cantidad - NEW.cantidad
    WHERE id_producto = NEW.id_producto;
END $$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER registrar_fecha_compra BEFORE INSERT ON compra
FOR EACH ROW
BEGIN
   IF NEW.fecha_compra IS NULL THEN
      SET NEW.fecha_compra = CURRENT_DATE;
   END IF;
END $$

DELIMITER ;




