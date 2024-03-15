/*REVIVAN EL SEEEERVER*/

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
    TO_DATE('14/02/2024','YYYY-MM-DD'),
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
    WHERE PFC_PROVEEDOR_FACTURA = 5;

    IF TO_NUMBER(v_pfc_proveedor_factura) = 5 THEN  -- Convertimos v_pfc_proveedor_factura a un número
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
    WHERE PFC_PROVEEDOR_FACTURA = 6;

    IF TO_NUMBER(v_pfc_proveedor_factura) = 6 THEN  -- Convertimos v_pfc_proveedor_factura a un número
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
    WHERE PFC_PROVEEDOR_FACTURA = 7;

    IF TO_NUMBER(v_pfc_proveedor_factura) = 7 THEN  -- Convertimos v_pfc_proveedor_factura a un número
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
