-- indicamos que usaremos la db alkawallet
use alkawallet; 

-- insertamos datos en la tabla moneda
INSERT INTO Moneda (currency_name, currency_symbol)
VALUES
('CLP', '$'),
('USD', '$'),
('EUR', '€');

-- insertamos datos en la tabla usuarios 
INSERT INTO Usuario (nombre, correo_electronico, contraseña, saldo, moneda_id)
VALUES
('Juan Perez', 'juan.perez@example.com', 'password123', 100000.00, 1),
('Maria Gomez', 'maria.gomez@example.com', 'password456', 250.50, 2),
('Pedro Diaz', 'pedro.diaz@example.com', 'password789', 50000.00, 1),
('Ana Silva', 'ana.silva@example.com', 'password000', 125.25, 3),
('Carlos Lopez', 'carlos.lopez@example.com', 'password987', 75000.00, 1),
('Beatriz Martin', 'beatriz.martin@example.com', 'password111', 300.00, 2),
('Diego Garcia', 'diego.garcia@example.com', 'password222', 40.00, 3),
('Laura Ortiz', 'laura.ortiz@example.com', 'password333', 60000.00, 1),
('Marcos Rodriguez', 'marcos.rodriguez@example.com', 'password444', 150.00, 2),
('Sofia Fernandez', 'sofia.fernandez@example.com', 'password555', 200.00, 3);


-- insertamos datos en la tabla transacciones
INSERT INTO Transaccion (sender_user_id, receiver_user_id, importe, transaction_date, moneda_id)
VALUES
(1, 2, 5000.00, '2024-04-14', 1),
(2, 1, 25.00, '2024-04-13', 2),
(1, 3, 75000.00, '2024-04-12', 1),
(4, 5, 40.00, '2024-04-11', 3),
(6, 7, 30.00, '2024-04-10', 2),
(3, 8, 60000.00, '2024-04-09', 1),
(9, 10, 20.00, '2024-04-08', 3),
(5, 1, 10.00, '2024-04-07', 2),
(2, 6, 55000.00, '2024-04-06', 1),
(7, 4, 35.00, '2024-04-05', 3);
  