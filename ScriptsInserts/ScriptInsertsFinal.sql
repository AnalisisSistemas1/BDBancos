/***************BANCOS***************/
INSERT INTO BAN_BANCO (BCO_NOMBRE,BCO_PAIS) VALUES('BANCO INDUSTRIAL, S.A.', 'GUATEMALA');
INSERT INTO BAN_BANCO (BCO_NOMBRE,BCO_PAIS) VALUES('BANCO DE DESARROLLO RURAL, SOCIEDAD ANONIMA', 'GUATEMALA');
INSERT INTO BAN_BANCO (BCO_NOMBRE,BCO_PAIS) VALUES('BANCO AGROMERCANTIL DE GUATEMALA', 'GUATEMALA');
INSERT INTO BAN_BANCO (BCO_NOMBRE,BCO_PAIS) VALUES('BANK OF AMERICA, NOS ACCOUNT', 'ESTADOS UNIDOS');


/***************CUENTAS***************/

INSERT INTO BAN_CUENTA (CTA_NOMBRE,CTA_TIPO,CTA_BANCO, CTA_NUMERO, CTA_MONEDA)
    VALUES('EMPRESA LA GRATITUD SOCIEDAD ANONIMA', 'DM', 1, '4050019786','GTQ');

INSERT INTO BAN_CUENTA (CTA_NOMBRE,CTA_TIPO,CTA_BANCO, CTA_NUMERO, CTA_MONEDA)
    VALUES('EMPRESA LA GRATITUD SOCIEDAD ANONIMA', 'DM', 2, '3033001234','GTQ');

INSERT INTO BAN_CUENTA (CTA_NOMBRE,CTA_TIPO,CTA_BANCO, CTA_NUMERO, CTA_MONEDA)
    VALUES('EMPRESA LA GRATITUD SOCIEDAD ANONIMA', 'DM', 3, '0000654321','GTQ');

INSERT INTO BAN_CUENTA (CTA_NOMBRE,CTA_TIPO,CTA_BANCO, CTA_NUMERO, CTA_MONEDA)
    VALUES('EMPRESA LA GRATITUD SOCIEDAD ANONIMA', 'DM', 4, '004080047204','USD');
 
    
/***************BAN_PROVEEDOR***************/
--PRIMER INSERT
INSERT INTO BAN_PROVEEDOR (
    PRO_NOMBRE,
    PRO_DIRECCION,
    PRO_NIT,
    PRO_TELEFONO,
    PRO_CORREO
)
VALUES (
    'Aceros TONCA',
    '9 calle 45-25',
    '202314-3',
    52031478,
    'info@acerostonca.com'	
);


--SEGUNDO INSERT
INSERT INTO BAN_PROVEEDOR (
    PRO_NOMBRE,
    PRO_DIRECCION,
    PRO_NIT,
    PRO_TELEFONO,
    PRO_CORREO
)
VALUES (
    'Metal Madera',
    '21 calle A, Z12',
    '74185296-0',
    54620033,
    'mm@metalmadera.com'	
);


--TERCER INSERT
INSERT INTO BAN_PROVEEDOR (
    PRO_NOMBRE,
    PRO_DIRECCION,
    PRO_NIT,
    PRO_TELEFONO,
    PRO_CORREO
)
VALUES (
    'SIMPLI',
    '48-96 Calle B, Z1',
    '74185296-2',
    42105896,
    'simpli@gmail.com'	
);


--CUARTO INSERT
INSERT INTO BAN_PROVEEDOR (
    PRO_NOMBRE,
    PRO_DIRECCION,
    PRO_NIT,
    PRO_TELEFONO,
    PRO_CORREO
)
VALUES (
    'Smart Living',
    '18-18, 12 Ave, Z10',
    '8521444-0',
    20102024,
    'smart@living.com'	
);

/***BAN_FACTURA***/

INSERT INTO BAN_FACTURA (FAC_FECHA, FAC_CONCEPTO, FAC_NOMBRE, FAC_NIT, FAC_TOTAL, FAC_CANTIDAD, FAC_METODO_PAGO)
VALUES (TO_DATE('2024-03-13', 'YYYY-MM-DD'), 'Compra de equipos', 'Empresa XYZ', '987654321', 3500.00, 2, 'Transferencia bancaria');

INSERT INTO BAN_FACTURA (FAC_FECHA, FAC_CONCEPTO, FAC_NOMBRE, FAC_NIT, FAC_TOTAL, FAC_CANTIDAD, FAC_METODO_PAGO)
VALUES (TO_DATE('2024-03-03','YYYY-MM-DD'), 'Servicios de consultoría', 'Consultores S.A.', '741258963', 2800.00, 1, 'Cheque');

INSERT INTO BAN_FACTURA (FAC_FECHA, FAC_CONCEPTO, FAC_NOMBRE, FAC_NIT, FAC_TOTAL, FAC_CANTIDAD, FAC_METODO_PAGO)
VALUES (TO_DATE('2024-03-01','YYYY-MM-DD'), 'Compra de mobiliario', 'Muebles And Co.', '369147258', 4500.00, 3, 'Tarjeta de débito');

INSERT INTO BAN_FACTURA (FAC_FECHA, FAC_CONCEPTO, FAC_NOMBRE, FAC_NIT, FAC_TOTAL, FAC_CANTIDAD, FAC_METODO_PAGO)
VALUES (TO_DATE('2024-02-28','YYYY-MM-DD'), 'Gastos de mantenimiento', 'Mantenimiento Rápido', '159263487', 1500.00, 1, 'Efectivo');



/*******BAN_PROVEEDOR_FACTURA********/
INSERT INTO BAN_PROVEEDOR_FACTURA (PFC_PROVEEDOR, PFC_FACTURA) VALUES (1, 1);

INSERT INTO BAN_PROVEEDOR_FACTURA (PFC_PROVEEDOR, PFC_FACTURA) VALUES (2, 2);

INSERT INTO BAN_PROVEEDOR_FACTURA (PFC_PROVEEDOR, PFC_FACTURA) VALUES (3, 3);

INSERT INTO BAN_PROVEEDOR_FACTURA (PFC_PROVEEDOR, PFC_FACTURA) VALUES (4, 4);


/*******BAN_DEPARTAMENTO********/

INSERT INTO BAN_DEPARTAMENTO (DEP_NOMBRE, DEP_JEFE, DEP_CORREO)
VALUES ('Departamento de Finanzas', 'Juan Perez', 'juan.perez@gmail.com');

INSERT INTO BAN_DEPARTAMENTO (DEP_NOMBRE , DEP_JEFE, DEP_CORREO) VALUES
('Departamento de Logisitca', 'Jason Monroy', 'jasonm3@gmail.com');

INSERT INTO BAN_DEPARTAMENTO (DEP_NOMBRE, DEP_JEFE, DEP_CORREO) VALUES
('Departamento de Marketing/Ventas','Carlos Salgero','carlosSA@gmail.com');

INSERT INTO BAN_DEPARTAMENTO (DEP_NOMBRE, DEP_JEFE, DEP_CORREO) VALUES
('Departamento de Contabilidad','Byron Frederick','bfrederick@gmail.com');


/*******BAN_EMPLEADO********/

INSERT INTO BAN_EMPLEADO (DEP_DEPARTAMENTO, EMP_NOMBRES, EMP_APELLIDOS, EMP_DPI, EMP_FECHA_NAC, EMP_PUESTO)
SELECT DEP_DEPARTAMENTO, 'Ana', 'Gonzalez', '1234567890123', TO_DATE('1995-10-20', 'YYYY-MM-DD'), 'Analista Financiero'
FROM BAN_DEPARTAMENTO
WHERE DEP_NOMBRE = 'Departamento de Finanzas'
AND ROWNUM = 1;

INSERT INTO BAN_EMPLEADO (DEP_DEPARTAMENTO, EMP_NOMBRES, EMP_APELLIDOS, EMP_DPI, EMP_FECHA_NAC, EMP_PUESTO)
SELECT DEP_DEPARTAMENTO, 'Pedro', 'Martinez', '9876543210987', TO_DATE('1990-08-15', 'YYYY-MM-DD'), 'Coordinador de Logistica'
FROM BAN_DEPARTAMENTO
WHERE DEP_NOMBRE = 'Departamento de Logisitca'
AND ROWNUM = 1;

INSERT INTO BAN_EMPLEADO (DEP_DEPARTAMENTO, EMP_NOMBRES, EMP_APELLIDOS, EMP_DPI, EMP_FECHA_NAC, EMP_PUESTO)
SELECT DEP_DEPARTAMENTO, 'Marta', 'Lopez', '4567890123456', TO_DATE('1988-12-10', 'YYYY-MM-DD'), 'Ejecutivo de Ventas'
FROM BAN_DEPARTAMENTO
WHERE DEP_NOMBRE = 'Departamento de Marketing/Ventas'
AND ROWNUM = 1;

INSERT INTO BAN_EMPLEADO (DEP_DEPARTAMENTO, EMP_NOMBRES, EMP_APELLIDOS, EMP_DPI, EMP_FECHA_NAC, EMP_PUESTO)
SELECT DEP_DEPARTAMENTO, 'Juan', 'Gomez', '7890123456789', TO_DATE('1992-04-25', 'YYYY-MM-DD'), 'Contador'
FROM BAN_DEPARTAMENTO
WHERE DEP_NOMBRE = 'Departamento de Contabilidad'
AND ROWNUM = 1;

/*******BAN_LIBRO_AUX********/


INSERT INTO BAN_LIBRO_AUX (LAX_BANCO, LAX_DEPARTAMENTO, LAX_FECHA, LAX_MES, LAX_FACTURA, LAX_CONCEPTO, LAX_DEBE, LAX_HABER, LAX_SALDO)
SELECT BCO_BANCO, DEP_DEPARTAMENTO, TO_DATE('2024-03-14', 'YYYY-MM-DD'), 'Marzo 2024', 'FACT-001', 'Compra de activos', 2000.00, 0.00, 2000.00
FROM BAN_BANCO, BAN_DEPARTAMENTO
WHERE BCO_NOMBRE = 'BANCO INDUSTRIAL, S.A.'
AND DEP_NOMBRE = 'Departamento de Finanzas'
AND ROWNUM = 1;

INSERT INTO BAN_LIBRO_AUX (LAX_BANCO, LAX_DEPARTAMENTO, LAX_FECHA, LAX_MES, LAX_FACTURA, LAX_CONCEPTO, LAX_DEBE, LAX_HABER, LAX_SALDO)
SELECT BCO_BANCO, DEP_DEPARTAMENTO, TO_DATE('2024-03-15', 'YYYY-MM-DD'), 'Marzo 2024', 'FACT-002', 'Venta de productos', 0.00, 1500.00, 1500.00
FROM BAN_BANCO, BAN_DEPARTAMENTO
WHERE BCO_NOMBRE = 'BANCO DE DESARROLLO RURAL, SOCIEDAD ANONIMA'
AND DEP_NOMBRE = 'Departamento de Logisitca'
AND ROWNUM = 1;

INSERT INTO BAN_LIBRO_AUX (LAX_BANCO, LAX_DEPARTAMENTO, LAX_FECHA, LAX_MES, LAX_FACTURA, LAX_CONCEPTO, LAX_DEBE, LAX_HABER, LAX_SALDO)
SELECT BCO_BANCO, DEP_DEPARTAMENTO, TO_DATE('2024-03-15', 'YYYY-MM-DD'), 'Marzo 2024', 'FACT-003', 'Ingreso por ventas', 2500.00, 0.00, 2500.00
FROM BAN_BANCO, BAN_DEPARTAMENTO
WHERE BCO_NOMBRE = 'BANCO AGROMERCANTIL DE GUATEMALA'
AND DEP_NOMBRE = 'Departamento de Marketing/Ventas'
AND ROWNUM = 1;


/*******BAN_NOTAS_CD ********/

-- PRIMER INSERT 
INSERT INTO BAN_NOTAS_CD (
    NCD_TIPO_NOTA,
    NCD_NUM_DOC,
    NCD_FECHA,
    NCD_TOTAL,
    NCD_TIPO_ERROR,
    NCD_NUM_NUEVA_NOTA,
    NCD_FECHA_NUEVA,
    NCD_TOTAL_NUEVO
)
VALUES (
    1,
    74182963,
    '14/02/2024',
    525.50,
    'Descuento no aplicado',
    123456789,
    '01/03/2024',
    550.00
);



--SEGUNDO INSERT
INSERT INTO BAN_NOTAS_CD (
    NCD_TIPO_NOTA,
    NCD_NUM_DOC,
    NCD_FECHA,
    NCD_TOTAL,
    NCD_TIPO_ERROR,
    NCD_NUM_NUEVA_NOTA,
    NCD_FECHA_NUEVA,
    NCD_TOTAL_NUEVO
)
VALUES (
    2,
    963852741,
    '01/01/2024',
    1200.00,
    'Rembolso',
    025875395,
    '05/02/2024',
    1200.00
);


--TERCER INSERT
INSERT INTO BAN_NOTAS_CD (
    NCD_TIPO_NOTA,
    NCD_NUM_DOC,
    NCD_FECHA,
    NCD_TOTAL,
    NCD_TIPO_ERROR,
    NCD_NUM_NUEVA_NOTA,
    NCD_FECHA_NUEVA,
    NCD_TOTAL_NUEVO
)
VALUES (
    1,
    35715982,
    '01/03/2024',
    125.75,
    'Diferencias en impuestos',
    15986423,
    '02/03/2024',
    110.66
);

--CUARTO INSERT
INSERT INTO BAN_NOTAS_CD (
    NCD_TIPO_NOTA,
    NCD_NUM_DOC,
    NCD_FECHA,
    NCD_TOTAL,
    NCD_TIPO_ERROR,
    NCD_NUM_NUEVA_NOTA,
    NCD_FECHA_NUEVA,
    NCD_TOTAL_NUEVO
)
VALUES (
    2,
    05314971,
    '25/01/2024',
    2500.00,
    'Devolucion',
    79795231,
    '24/02/2024',
    2500.00
);

/*******BAN_COMPRA_E********/


--PRIMER INSERT
DECLARE 
    v_pfc_proveedor_factura BAN_PROVEEDOR_FACTURA.PFC_PROVEEDOR_FACTURA%TYPE;
BEGIN
    SELECT PFC_PROVEEDOR_FACTURA
    INTO v_pfc_proveedor_factura
    FROM BAN_PROVEEDOR_FACTURA
    WHERE PFC_PROVEEDOR_FACTURA = 4;

    IF TO_NUMBER(v_pfc_proveedor_factura) = 4 THEN  -- Convertimos v_pfc_proveedor_factura a un número
        INSERT INTO BAN_COMPRA_E (
            CPE_PROVEEDOR_FACTURA,
            CPE_TOTAL,
            CPE_FECHA,
            CPE_CONCEPTO,
            CPE_CANTIDAD,
            CPE_METODO_PAGO,
            CPE_DESCRIPCION,
            CPE_NUM_COMPRA
        ) VALUES (
            v_pfc_proveedor_factura,
            2575.25,
            TO_DATE('14/03/2024', 'DD/MM/YYYY'),
            'Toner para impresora',
            10,
            1,
            'Pachas de toner colo negro para impresora HP',
            2520
        );    
   END IF;     
END;


--SEGUNDO INSERT
DECLARE 
    v_pfc_proveedor_factura BAN_PROVEEDOR_FACTURA.PFC_PROVEEDOR_FACTURA%TYPE;
BEGIN
    SELECT PFC_PROVEEDOR_FACTURA
    INTO v_pfc_proveedor_factura
    FROM BAN_PROVEEDOR_FACTURA
    WHERE PFC_PROVEEDOR_FACTURA = 3;

    IF TO_NUMBER(v_pfc_proveedor_factura) = 3 THEN  -- Convertimos v_pfc_proveedor_factura a un número
        INSERT INTO BAN_COMPRA_E (
            CPE_PROVEEDOR_FACTURA,
            CPE_TOTAL,
            CPE_FECHA,
            CPE_CONCEPTO,
            CPE_CANTIDAD,
            CPE_METODO_PAGO,
            CPE_DESCRIPCION,
            CPE_NUM_COMPRA
        ) VALUES (
            v_pfc_proveedor_factura,
            1200.00,
            TO_DATE('01/03/2024', 'DD/MM/YYYY'),
            'Toallas para limpiar',
            6,
            1,
            'Toallas de microfibra color amarillo para superficies de mandera o metal',
            2520
        );    
   END IF;     
END;


--TERCER INSERT
DECLARE 
    v_pfc_proveedor_factura BAN_PROVEEDOR_FACTURA.PFC_PROVEEDOR_FACTURA%TYPE;
BEGIN
    SELECT PFC_PROVEEDOR_FACTURA
    INTO v_pfc_proveedor_factura
    FROM BAN_PROVEEDOR_FACTURA
    WHERE PFC_PROVEEDOR_FACTURA = 2;

    IF TO_NUMBER(v_pfc_proveedor_factura) = 2 THEN  -- Convertimos v_pfc_proveedor_factura a un número
        INSERT INTO BAN_COMPRA_E (
            CPE_PROVEEDOR_FACTURA,
            CPE_TOTAL,
            CPE_FECHA,
            CPE_CONCEPTO,
            CPE_CANTIDAD,
            CPE_METODO_PAGO,
            CPE_DESCRIPCION,
            CPE_NUM_COMPRA
        ) VALUES (
            v_pfc_proveedor_factura,
            5500.00,
            TO_DATE('02/02/2024', 'DD/MM/YYYY'),
            'Ventiladores',
            5,
            2,
            'Ventiladores marca X tamano mediano',
            30021
        );    
   END IF;     
END;



--CUARTO INSERT
DECLARE 
    v_pfc_proveedor_factura BAN_PROVEEDOR_FACTURA.PFC_PROVEEDOR_FACTURA%TYPE;
BEGIN
    SELECT PFC_PROVEEDOR_FACTURA
    INTO v_pfc_proveedor_factura
    FROM BAN_PROVEEDOR_FACTURA
    WHERE PFC_PROVEEDOR_FACTURA = 1;

    IF TO_NUMBER(v_pfc_proveedor_factura) = 1 then -- Convertimos v_pfc_proveedor_factura a un número
        INSERT INTO BAN_COMPRA_E (
            CPE_PROVEEDOR_FACTURA,
            CPE_TOTAL,
            CPE_FECHA,
            CPE_CONCEPTO,
            CPE_CANTIDAD,
            CPE_METODO_PAGO,
            CPE_DESCRIPCION,
            CPE_NUM_COMPRA
        ) VALUES (
            v_pfc_proveedor_factura,
            150.75,
            TO_DATE('09/01/2024', 'DD/MM/YYYY'),
            'Lapiceros',
            25,
            2,
            'Lapiceros marca BIC color negro',
            84681968
        );    
   END IF;     
END;


/*******BAN_CHEQUE********/
INSERT INTO BAN_CHEQUE (CHQ_CTA_NUMERO, CHQ_FECHA, CHQ_BENEFICIARIO, CHQ_MONTO, CHQ_MOTIVO, CHQ_NUM_CHEQUE, CHQ_ESTADO)
VALUES ('4050019786', TO_DATE('2024-03-11','YYYY-MM-DD'), 'Maria Gonzalez', 750.00, 'Pago de alquiler', '456', 'Pendiente');

INSERT INTO BAN_CHEQUE (CHQ_CTA_NUMERO, CHQ_FECHA, CHQ_BENEFICIARIO, CHQ_MONTO, CHQ_MOTIVO, CHQ_NUM_CHEQUE, CHQ_ESTADO)
VALUES ('4050019786', TO_DATE('2024-03-10','YYYY-MM-DD'), 'Carlos López', 500.00, 'Compra de suministros', '789', 'Pendiente');

INSERT INTO BAN_CHEQUE (CHQ_CTA_NUMERO, CHQ_FECHA, CHQ_BENEFICIARIO, CHQ_MONTO, CHQ_MOTIVO, CHQ_NUM_CHEQUE, CHQ_ESTADO)
VALUES ('4050019786', TO_DATE('2024-03-09','YYYY-MM-DD'), 'Ana Martínez', 1200.00, 'Pago de servicios', '159', 'Pendiente');

INSERT INTO BAN_CHEQUE (CHQ_CTA_NUMERO, CHQ_FECHA, CHQ_BENEFICIARIO, CHQ_MONTO, CHQ_MOTIVO, CHQ_NUM_CHEQUE, CHQ_ESTADO)
VALUES ('4050019786', TO_DATE('2024-03-08','YYYY-MM-DD'), 'Pedro Ramirez', 300.00, 'Reembolso de gastos', '357', 'Pendiente');


/*******BAN_PAGO_NOMINA********/

INSERT INTO BAN_PAGO_NOMINA (PGN_CTA_NUMERO , PGN_EMPLEADO , PGN_FECHA, PGN_MONTO, PGN_CONCEPTO, PGN_ESTADO_PAGO, PGN_OBSERVACIONES)
VALUES ('4050019786', 1, TO_DATE('2024-03-15','YYYY-MM-DD'), 1800.00, 'Pago de nómina', 'Pagado', 'Sin observaciones');

INSERT INTO BAN_PAGO_NOMINA (PGN_CTA_NUMERO , PGN_EMPLEADO , PGN_FECHA, PGN_MONTO, PGN_CONCEPTO, PGN_ESTADO_PAGO, PGN_OBSERVACIONES)
VALUES ('4050019786', 2, TO_DATE('2024-03-15','YYYY-MM-DD'), 2200.00, 'Pago de nómina', 'Pagado', 'Sin observaciones');

INSERT INTO BAN_PAGO_NOMINA (PGN_CTA_NUMERO , PGN_EMPLEADO , PGN_FECHA, PGN_MONTO, PGN_CONCEPTO, PGN_ESTADO_PAGO, PGN_OBSERVACIONES)
VALUES ('4050019786', 3, TO_DATE('2024-03-15','YYYY-MM-DD'), 2500.00, 'Pago de nómina', 'Pagado', 'Sin observaciones');

INSERT INTO BAN_PAGO_NOMINA (PGN_CTA_NUMERO , PGN_EMPLEADO , PGN_FECHA, PGN_MONTO, PGN_CONCEPTO, PGN_ESTADO_PAGO, PGN_OBSERVACIONES)
VALUES ('4050019786', 4, TO_DATE('2024-03-15','YYYY-MM-DD'), 1900.00, 'Pago de nómina', 'Pagado', 'Sin observaciones');


/*******BAN_TRANSFERENCIA********/

INSERT INTO BAN_TRANSFERENCIA 
(TRA_TIPO_CTA,
TRA_CTA_DEBITO,
TRA_CTA_CREDITO,
TRA_FECHA,
TRA_TIPO,
TRA_ESTATUS,
TRA_NUM_TRANSFERENCIA,
TRA_EMPLEADO_SOLICITA,
TRA_EMPLEADO_AUTORIZA,
TRA_MONTO,
TRA_COMENTARIO)
VALUES('DM',
'4080047204',
'004080047204',
TO_DATE('2023-03-14', 'YYYY-MM-DD'),
'INTERNACIONAL',
'RECIBIDA',
'COM 2300256243',
2,
1,
2718.82,
'06 TRANSF. USD - GTQ');


INSERT INTO BAN_TRANSFERENCIA 
(TRA_TIPO_CTA,
TRA_CTA_DEBITO,
TRA_CTA_CREDITO,
TRA_FECHA,
TRA_TIPO,
TRA_ESTATUS,
TRA_NUM_TRANSFERENCIA,
TRA_EMPLEADO_SOLICITA,
TRA_EMPLEADO_AUTORIZA,
TRA_MONTO,
TRA_COMENTARIO)
VALUES('DM',
'3033001234',
'GT68AMCN01010000000903721504',
TO_DATE('2023-03-14', 'YYYY-MM-DD'),
'ACH',
'ENVIADA',
'112015',
2,
1,
20000,
'INCOMING');


/*******BAN_ESTADO_C********/

INSERT INTO BAN_ESTADO_C (ESC_BANCO, ESC_CTA_NUMERO, ESC_MES, ESC_FECHA, ESC_DOCUMENTO, ESC_DESCRIPCION, ESC_DEBITO, ESC_CREDITO, ESC_SALDO)
VALUES (
    (SELECT BCO_BANCO FROM BAN_BANCO WHERE BCO_BANCO = 1),
    (SELECT CTA_NUMERO FROM BAN_CUENTA WHERE CTA_CUENTA = 1),
    'Marzo 2024',
    TO_DATE('2024-03-14', 'YYYY-MM-DD'),
    'DOC-123456',
    'Pago de proveedores',
    1000.00,
    0.00,
    1000.00
);

INSERT INTO BAN_ESTADO_C (ESC_BANCO, ESC_CTA_NUMERO, ESC_MES, ESC_FECHA, ESC_DOCUMENTO, ESC_DESCRIPCION, ESC_DEBITO, ESC_CREDITO, ESC_SALDO)
VALUES (
    (SELECT BCO_BANCO FROM BAN_BANCO WHERE BCO_BANCO = 2),
    (SELECT CTA_NUMERO FROM BAN_CUENTA WHERE CTA_CUENTA = 2),
    'Marzo 2024',
    TO_DATE('2024-03-15', 'YYYY-MM-DD'), 
    'DOC-789012',
    'Ingreso de ventas',
    0.00,
    1500.00, 
    1500.00 
);



/*******BAN_ESTADO_FINANCIERO********/

INSERT INTO BAN_ESTADO_FINANCIERO (ESF_LIBRO_AUX, ESF_ESTADO_C, ESF_TRANSACCION, ESF_TIPO_TRANSACCION, ESF_FECHA, ESF_SALDO, ESF_TIPO_SALDO, ESF_NOMBRE_LIBRO, ESF_BALANCE)
VALUES (
    (SELECT LAX_LIBRO_AUX FROM BAN_LIBRO_AUX WHERE LAX_LIBRO_AUX = 1),
    (SELECT ESC_ESTADO_C FROM BAN_ESTADO_C WHERE ESC_ESTADO_C = 1),
    1,
    'Compra de activos', 
    TO_DATE('2024-03-14', 'YYYY-MM-DD'), 
    2000.00, 
    'Debito', 
    'Diario',
    2000.00 
);

-- Insert 2
INSERT INTO BAN_ESTADO_FINANCIERO (ESF_LIBRO_AUX, ESF_ESTADO_C, ESF_TRANSACCION, ESF_TIPO_TRANSACCION, ESF_FECHA, ESF_SALDO, ESF_TIPO_SALDO, ESF_NOMBRE_LIBRO, ESF_BALANCE)
VALUES (
    (SELECT LAX_LIBRO_AUX FROM BAN_LIBRO_AUX WHERE LAX_LIBRO_AUX = 2),
    (SELECT ESC_ESTADO_C FROM BAN_ESTADO_C WHERE ESC_ESTADO_C = 2),
    2, 
    'Venta de productos', 
    TO_DATE('2024-03-15', 'YYYY-MM-DD'), 
    1500.00, 
    'Credito', 
    'Diario', 
    1500.00 
);


/*******BAN_DEPOSITO********/

INSERT INTO BAN_DEPOSITO (DEP_BANCO, DEP_CUENTA, DEP_TIPO_CUENTA, DEP_TIPO_DEPOSITO, DEP_MONTO, DEP_FECHA, DEP_DESCRIPCION, DEP_NUM_DEPOSITO)
VALUES (1, '78901234', 'Cuenta Corriente', 'Deposito en efectivo', 1500.50, TO_DATE('2024-03-14', 'YYYY-MM-DD'), 'Deposito en efectivo del cliente X', '001');

INSERT INTO BAN_DEPOSITO (DEP_BANCO, DEP_CUENTA, DEP_TIPO_CUENTA, DEP_TIPO_DEPOSITO, DEP_MONTO, DEP_FECHA, DEP_DESCRIPCION, DEP_NUM_DEPOSITO)
VALUES (2, '34567890', 'Cuenta de Ahorros', 'Transferencia bancaria', 2500.75, TO_DATE('2024-03-15', 'YYYY-MM-DD'), 'Transferencia recibida de cliente Y', '002');

INSERT INTO BAN_DEPOSITO (DEP_BANCO, DEP_CUENTA, DEP_TIPO_CUENTA, DEP_TIPO_DEPOSITO, DEP_MONTO, DEP_FECHA, DEP_DESCRIPCION, DEP_NUM_DEPOSITO)
VALUES (3, '90123456', 'Cuenta Corriente', 'Cheque', 1800.00, TO_DATE('2024-03-16', 'YYYY-MM-DD'), 'Deposito de cheque por ventas', '003');

INSERT INTO BAN_DEPOSITO (DEP_BANCO, DEP_CUENTA, DEP_TIPO_CUENTA, DEP_TIPO_DEPOSITO, DEP_MONTO, DEP_FECHA, DEP_DESCRIPCION, DEP_NUM_DEPOSITO)
VALUES (4, '56789012', 'Cuenta de Ahorros', 'Depesito en efectivo', 3000.25, TO_DATE('2024-03-17', 'YYYY-MM-DD'), 'Deposito en efectivo del cliente Z', '004');


/*******BAN_P_SERVICIO********/

INSERT INTO BAN_P_SERVICIO (PSV_PROVEEDOR_FACTURA, PSV_TIPO_SERVICIO, PSV_NUM_DOCUMENTO, PSV_MONEDA, PSV_METODO_PAGO, PSV_MONTO_TOTAL, PSV_FECHA, PSV_DESCRIPCION)
VALUES (1, 'Energiaa electrica', '001', 'USD', 'Tarjeta de credito', 500.00, TO_DATE('2024-03-11', 'YYYY-MM-DD'), 'Pago mensual de electricidad');

INSERT INTO BAN_P_SERVICIO (PSV_PROVEEDOR_FACTURA, PSV_TIPO_SERVICIO, PSV_NUM_DOCUMENTO, PSV_MONEDA, PSV_METODO_PAGO, PSV_MONTO_TOTAL, PSV_FECHA, PSV_DESCRIPCION)
VALUES (2, 'Servicio de Internet', '002', 'GTQ', 'Transferencia bancaria', 750.25, TO_DATE('2024-03-12', 'YYYY-MM-DD'), 'Pago mensual de internet');

INSERT INTO BAN_P_SERVICIO (PSV_PROVEEDOR_FACTURA, PSV_TIPO_SERVICIO, PSV_NUM_DOCUMENTO, PSV_MONEDA, PSV_METODO_PAGO, PSV_MONTO_TOTAL, PSV_FECHA, PSV_DESCRIPCION)
VALUES (3, 'Servicio de agua', '003', 'USD', 'Cheque', 250.00, TO_DATE('2024-03-13', 'YYYY-MM-DD'), 'Pago mensual de agua');

INSERT INTO BAN_P_SERVICIO (PSV_PROVEEDOR_FACTURA, PSV_TIPO_SERVICIO, PSV_NUM_DOCUMENTO, PSV_MONEDA, PSV_METODO_PAGO, PSV_MONTO_TOTAL, PSV_FECHA, PSV_DESCRIPCION)
VALUES (4, 'Servicio movil', '004', 'GTQ', 'Efectivo', 300.00, TO_DATE('2024-03-14', 'YYYY-MM-DD'), 'Pago factura telefonica mensual');


/*******BAN_CONCILIACION********/

INSERT INTO BAN_CONCILIACION (CON_BANCO, CON_MES, CON_LAX_AUX_LLAVE, CON_ESF_ESTADO_F_LLAVE, CON_LAX_SALDO, CON_ESF_SALDO, CON_DIFERENCIA, CON_ESTADO)
VALUES (
    (SELECT BCO_BANCO FROM BAN_BANCO WHERE BCO_BANCO = 1),
    'Marzo 2024',
    1,
    1,
    (SELECT LAX_SALDO FROM BAN_LIBRO_AUX WHERE ROWNUM=1),
    (SELECT ESF_SALDO FROM BAN_ESTADO_FINANCIERO WHERE ROWNUM=1),
    (SELECT 
        a.LAX_SALDO - b.ESF_SALDO
        FROM BAN_LIBRO_AUX A
        LEFT JOIN BAN_ESTADO_FINANCIERO B ON a.LAX_LIBRO_AUX = b.ESF_LIBRO_AUX where a.LAX_LIBRO_AUX = 1 AND b.ESF_ESTADO_FINANCIERO =1),
    'Conciliado'
);


INSERT INTO BAN_CONCILIACION (CON_BANCO, CON_MES, CON_LAX_AUX_LLAVE, CON_ESF_ESTADO_F_LLAVE, CON_LAX_SALDO, CON_ESF_SALDO, CON_DIFERENCIA, CON_ESTADO)
VALUES (
    (SELECT BCO_BANCO FROM BAN_BANCO WHERE BCO_BANCO = 1),
    'Marzo 2024',
    2,
    2,
    (SELECT LAX_SALDO FROM BAN_LIBRO_AUX WHERE ROWNUM=1),
    (SELECT ESF_SALDO FROM BAN_ESTADO_FINANCIERO WHERE ROWNUM=1),
    (SELECT 
        a.LAX_SALDO - b.ESF_SALDO
        FROM BAN_LIBRO_AUX A
        LEFT JOIN BAN_ESTADO_FINANCIERO B ON a.LAX_LIBRO_AUX = b.ESF_LIBRO_AUX where a.LAX_LIBRO_AUX = 2 AND b.ESF_ESTADO_FINANCIERO =2),
    'Conciliado'
);