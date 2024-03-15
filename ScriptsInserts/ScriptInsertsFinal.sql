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