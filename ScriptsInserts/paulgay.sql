/*REVIVAN EL SEEEERVER*/
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


DECLARE 
    v_pfc_proveedor_factura BAN_PROVEEDOR_FACTURA.PFC_PROVEEDOR_FACTURA%TYPE;
BEGIN
    SELECT PFC_PROVEEDOR_FACTURA
    INTO v_pfc_proveedor_factura
    FROM BAN_PROVEEDOR_FACTURA
    WHERE PFC_PROVEEDOR_FACTURA = 1;
    
    IF v_pfc_proveedor_factura = 1 THEN
        INSERT INTO BAN_COMPRA_E (
            PFC_PROVEEDOR_FACTURA,
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
            'Efectivo',
            'Pachas de toner colo negro para impresora HP',
            2520
        );    
   END IF;     
END;