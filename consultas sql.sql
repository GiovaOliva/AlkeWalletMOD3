-- Consulta para obtener el nombre de la moneda elegida por un usuario específico
-- añadimos el simbolo de la moneda y el id y nombre del usuario para hacer la consulta mas completa
SELECT 
m.currency_name,
m.currency_symbol,
u.user_id,
u.nombre
FROM Moneda m
INNER JOIN Usuario u ON u.moneda_id = m.currency_id
WHERE u.user_id = 7;

-- Consulta para obtener todas las transacciones registradas
SELECT * FROM transaccion;

-- Consulta para obtener todas las transacciones realizadas por un usuario específico
SELECT t.transaction_id,
       u.nombre AS sender_name,
       t.importe,
       t.transaction_date,
       m.currency_name AS currency_name
FROM Transaccion t
INNER JOIN Usuario u ON u.user_id = t.sender_user_id
INNER JOIN Moneda m ON m.currency_id = t.moneda_id
WHERE t.sender_user_id = 3;

-- Sentencia DML para modificar el campo correo electrónico de un usuario específico
UPDATE Usuario
SET correo_electronico = "nuevocorreo@example.com"
WHERE user_id = 3;

-- Sentencia para eliminar los datos de una transacción (eliminado de la fila completa)
DELETE FROM Transaccion
WHERE transaction_id = 10;


