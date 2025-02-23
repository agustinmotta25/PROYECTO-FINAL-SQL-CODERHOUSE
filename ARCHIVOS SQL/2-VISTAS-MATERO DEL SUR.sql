USE entregas;

CREATE VIEW ventas_por_cliente AS
SELECT cl.nombre AS cliente, p.nombre AS producto, v.cantidad, v.fecha_venta
FROM venta v
JOIN cliente cl ON v.id_cliente = cl.id_cliente
JOIN producto p ON v.id_producto = p.id_producto;

CREATE VIEW proveedores_rubros AS
SELECT nombre AS proveedor, rubro
FROM proveedor;

CREATE VIEW compras_recientes AS
SELECT c.id_compra, p.nombre AS producto, pr.nombre AS proveedor, c.cantidad, c.fecha_compra
FROM compra c
JOIN producto p ON c.id_producto = p.id_producto
JOIN proveedor pr ON c.id_proveedor = pr.id_proveedor
ORDER BY c.fecha_compra DESC
LIMIT 10;
