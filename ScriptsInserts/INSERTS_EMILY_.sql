
/*******BAN_DEPOSITO********/
INSERT INTO BAN_DEPOSITO (DEP_BANCO, DEP_CUENTA, DEP_TIPO_CUENTA, DEP_TIPO_DEPOSITO, DEP_MONTO, DEP_FECHA, DEP_DESCRIPCION, DEP_NUM_DEPOSITO)
VALUES (1, 78901234, 'Cuenta Corriente', 'Deposito en efectivo', 1500.50, TO_DATE('2024-03-14', 'YYYY-MM-DD'), 'Depesito en efectivo del cliente X', '001');

INSERT INTO BAN_DEPOSITO (DEP_BANCO, DEP_CUENTA, DEP_TIPO_CUENTA, DEP_TIPO_DEPOSITO, DEP_MONTO, DEP_FECHA, DEP_DESCRIPCION, DEP_NUM_DEPOSITO)
VALUES (2, 34567890, 'Cuenta de Ahorros', 'Transferencia bancaria', 2500.75, TO_DATE('2024-03-15', 'YYYY-MM-DD'), 'Transferencia recibida de cliente Y', '002');

INSERT INTO BAN_DEPOSITO (DEP_BANCO, DEP_CUENTA, DEP_TIPO_CUENTA, DEP_TIPO_DEPOSITO, DEP_MONTO, DEP_FECHA, DEP_DESCRIPCION, DEP_NUM_DEPOSITO)
VALUES (3, 90123456, 'Cuenta Corriente', 'Cheque', 1800.00, TO_DATE('2024-03-16', 'YYYY-MM-DD'), 'Depesito de cheque por ventas', '003');

INSERT INTO BAN_DEPOSITO (DEP_BANCO, DEP_CUENTA, DEP_TIPO_CUENTA, DEP_TIPO_DEPOSITO, DEP_MONTO, DEP_FECHA, DEP_DESCRIPCION, DEP_NUM_DEPOSITO)
VALUES (4, 56789012, 'Cuenta de Ahorros', 'Depesito en efectivo', 3000.25, TO_DATE('2024-03-17', 'YYYY-MM-DD'), 'Depesito en efectivo del cliente Z', '004');

/*******BAN_P_SERVICIO********/
INSERT INTO BAN_P_SERVICIO (PSV_PROVEEDOR_FACTURA, PSV_TIPO_SERVICIO, PSV_NUM_DOCUMENTO, PSV_MONEDA, PSV_METODO_PAGO, PSV_MONTO_TOTAL, PSV_FECHA, PSV_DESCRIPCION)
VALUES (1, 'Energiaa electrica', '001', 'USD', 'Tarjeta de credito', 500.00, TO_DATE('2024-03-11', 'YYYY-MM-DD'), 'Pago mensual de electricidad');

INSERT INTO BAN_P_SERVICIO (PSV_PROVEEDOR_FACTURA, PSV_TIPO_SERVICIO, PSV_NUM_DOCUMENTO, PSV_MONEDA, PSV_METODO_PAGO, PSV_MONTO_TOTAL, PSV_FECHA, PSV_DESCRIPCION)
VALUES (2, 'Servicio de Internet', '002', 'GTQ', 'Transferencia bancaria', 750.25, TO_DATE('2024-03-12', 'YYYY-MM-DD'), 'Pago mensual de internet');

INSERT INTO BAN_P_SERVICIO (PSV_PROVEEDOR_FACTURA, PSV_TIPO_SERVICIO, PSV_NUM_DOCUMENTO, PSV_MONEDA, PSV_METODO_PAGO, PSV_MONTO_TOTAL, PSV_FECHA, PSV_DESCRIPCION)
VALUES (3, 'Servicio de agua', '003', 'USD', 'Cheque', 250.00, TO_DATE('2024-03-13', 'YYYY-MM-DD'), 'Pago mensual de agua');

INSERT INTO BAN_P_SERVICIO (PSV_PROVEEDOR_FACTURA, PSV_TIPO_SERVICIO, PSV_NUM_DOCUMENTO, PSV_MONEDA, PSV_METODO_PAGO, PSV_MONTO_TOTAL, PSV_FECHA, PSV_DESCRIPCION)
VALUES (4, 'Servicio movil', '004', 'GTQ', 'Efectivo', 300.00, TO_DATE('2024-03-14', 'YYYY-MM-DD'), 'Pago factura telefonica mensual');


/*******BAN_PROVEEDOR_FACTURA********/
INSERT INTO BAN_PROVEEDOR_FACTURA (PFC_PROVEEDOR, PFC_FACTURA) VALUES (1, 1);

INSERT INTO BAN_PROVEEDOR_FACTURA (PFC_PROVEEDOR, PFC_FACTURA) VALUES (2, 2);

INSERT INTO BAN_PROVEEDOR_FACTURA (PFC_PROVEEDOR, PFC_FACTURA) VALUES (3, 3);

INSERT INTO BAN_PROVEEDOR_FACTURA (PFC_PROVEEDOR, PFC_FACTURA) VALUES (4, 4);

