/***INSERCIÓN EN LA TABLA BAN_CUENTA***/

INSERT INTO BAN_CUENTA (CTA_NOMBRE, CTA_TIPO, CTA_BANCO, CTA_NUMERO, CTA_MONEDA)
VALUES ('Cuenta de Ahorros', 'Ahorro', 2, '987654321', 'EUR');

INSERT INTO BAN_CUENTA (CTA_NOMBRE, CTA_TIPO, CTA_BANCO, CTA_NUMERO, CTA_MONEDA)
VALUES ('Cuenta de Nómina', 'Corriente', 1, '456789123', 'USD');

INSERT INTO BAN_CUENTA (CTA_NOMBRE, CTA_TIPO, CTA_BANCO, CTA_NUMERO, CTA_MONEDA)
VALUES ('Cuenta de Inversiones', 'Inversión', 3, '741852963', 'USD');

INSERT INTO BAN_CUENTA (CTA_NOMBRE, CTA_TIPO, CTA_BANCO, CTA_NUMERO, CTA_MONEDA)
VALUES ('Cuenta de Gastos', 'Corriente', 2, '369258147', 'GBP');

INSERT INTO BAN_CUENTA (CTA_NOMBRE, CTA_TIPO, CTA_BANCO, CTA_NUMERO, CTA_MONEDA)
VALUES ('Cuenta de Préstamo', 'Préstamo', 3, '159263748', 'EUR');

/***INSERCIÓN EN LA TABLA BAN_CHEQUE***/

INSERT INTO BAN_CHEQUE (CTA_NUMERO, CHQ_FECHA, CHQ_BENEFICIARIO, CHQ_MONTO, CHQ_MOTIVO, CHQ_NUM_CHEQUE, CHQ_ESTADO)
VALUES (2, '2024-03-11', 'Maria González', 750.00, 'Pago de alquiler', '456', 'Pendiente');

INSERT INTO BAN_CHEQUE (CTA_NUMERO, CHQ_FECHA, CHQ_BENEFICIARIO, CHQ_MONTO, CHQ_MOTIVO, CHQ_NUM_CHEQUE, CHQ_ESTADO)
VALUES (3, '2024-03-10', 'Carlos López', 500.00, 'Compra de suministros', '789', 'Pendiente');

INSERT INTO BAN_CHEQUE (CTA_NUMERO, CHQ_FECHA, CHQ_BENEFICIARIO, CHQ_MONTO, CHQ_MOTIVO, CHQ_NUM_CHEQUE, CHQ_ESTADO)
VALUES (1, '2024-03-09', 'Ana Martínez', 1200.00, 'Pago de servicios', '159', 'Pendiente');

INSERT INTO BAN_CHEQUE (CTA_NUMERO, CHQ_FECHA, CHQ_BENEFICIARIO, CHQ_MONTO, CHQ_MOTIVO, CHQ_NUM_CHEQUE, CHQ_ESTADO)
VALUES (4, '2024-03-08', 'Pedro Ramirez', 300.00, 'Reembolso de gastos', '357', 'Pendiente');

INSERT INTO BAN_CHEQUE (CTA_NUMERO, CHQ_FECHA, CHQ_BENEFICIARIO, CHQ_MONTO, CHQ_MOTIVO, CHQ_NUM_CHEQUE, CHQ_ESTADO)
VALUES (5, '2024-03-07', 'Sofia Diaz', 900.00, 'Pago de proveedores', '258', 'Pendiente');

/***INSERCIÓN EN LA TABLA BAN_PAGO_NOMINA***/

INSERT INTO BAN_PAGO_NOMINA (CTA_NUMERO, EMP_EMPLEADO, PGN_FECHA, PGN_MONTO, PGN_CONCEPTO, PGN_ESTADO_PAGO, PGN_OBSERVACIONES)
VALUES (2, 1002, '2024-03-15', 1800.00, 'Pago de nómina', 'Pagado', 'Sin observaciones');

INSERT INTO BAN_PAGO_NOMINA (CTA_NUMERO, EMP_EMPLEADO, PGN_FECHA, PGN_MONTO, PGN_CONCEPTO, PGN_ESTADO_PAGO, PGN_OBSERVACIONES)
VALUES (3, 1003, '2024-03-15', 2200.00, 'Pago de nómina', 'Pagado', 'Sin observaciones');

INSERT INTO BAN_PAGO_NOMINA (CTA_NUMERO, EMP_EMPLEADO, PGN_FECHA, PGN_MONTO, PGN_CONCEPTO, PGN_ESTADO_PAGO, PGN_OBSERVACIONES)
VALUES (1, 1004, '2024-03-15', 2500.00, 'Pago de nómina', 'Pagado', 'Sin observaciones');

INSERT INTO BAN_PAGO_NOMINA (CTA_NUMERO, EMP_EMPLEADO, PGN_FECHA, PGN_MONTO, PGN_CONCEPTO, PGN_ESTADO_PAGO, PGN_OBSERVACIONES)
VALUES (4, 1005, '2024-03-15', 1900.00, 'Pago de nómina', 'Pagado', 'Sin observaciones');

INSERT INTO BAN_PAGO_NOMINA (CTA_NUMERO, EMP_EMPLEADO, PGN_FECHA, PGN_MONTO, PGN_CONCEPTO, PGN_ESTADO_PAGO, PGN_OBSERVACIONES)
VALUES (5, 1006, '2024-03-15', 2050.00, 'Pago de nómina', 'Pagado', 'Sin observaciones');

/***INSERCIÓN EN LA TABLA BAN_FACTURA***/

INSERT INTO BAN_FACTURA (FAC_FECHA, FAC_CONCEPTO, FAC_NOMBRE, FAC_NIT, FAC_TOTAL, FAC_CANTIDAD, FAC_METODO_PAGO)
VALUES (TO_DATE('2024-03-13', 'YYYY-MM-DD'), 'Compra de equipos', 'Empresa XYZ', '987654321', 3500.00, 2, 'Transferencia bancaria');

INSERT INTO BAN_FACTURA (FAC_FECHA, FAC_CONCEPTO, FAC_NOMBRE, FAC_NIT, FAC_TOTAL, FAC_CANTIDAD, FAC_METODO_PAGO)
VALUES (TO_DATE('2024-03-03','YYYY-MM-DD'), 'Servicios de consultoría', 'Consultores S.A.', '741258963', 2800.00, 1, 'Cheque');

INSERT INTO BAN_FACTURA (FAC_FECHA, FAC_CONCEPTO, FAC_NOMBRE, FAC_NIT, FAC_TOTAL, FAC_CANTIDAD, FAC_METODO_PAGO)
VALUES (TO_DATE('2024-03-01','YYYY-MM-DD'), 'Compra de mobiliario', 'Muebles & Co.', '369147258', 4500.00, 3, 'Tarjeta de débito');

INSERT INTO BAN_FACTURA (FAC_FECHA, FAC_CONCEPTO, FAC_NOMBRE, FAC_NIT, FAC_TOTAL, FAC_CANTIDAD, FAC_METODO_PAGO)
VALUES (TO_DATE('2024-02-28','YYYY-MM-DD'), 'Gastos de mantenimiento', 'Mantenimiento Rápido', '159263487', 1500.00, 1, 'Efectivo');