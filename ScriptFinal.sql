/*****************CATALOGOS******************/

DROP TABLE BAN_ARCHIVO;
DROP TABLE BAN_DEPARTAMENTO;
DROP TABLE BAN_CUENTA;
DROP TABLE BAN_BANCO;
DROP TABLE BAN_PROVEEDOR;
DROP TABLE BAN_FACTURA;
DROP TABLE BAN_EMPLEADO;
DROP TABLE BAN_PROVEEDOR_FACTURA;

CREATE TABLE BAN_BANCO(
    BCO_BANCO NUMERIC GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    BCO_NOMBRE VARCHAR2(100),
    BCO_PAIS VARCHAR2(30),
    CONSTRAINT PK_BCO_BANCO PRIMARY KEY (BCO_BANCO)
);

CREATE TABLE BAN_CUENTA(
    CTA_CUENTA NUMERIC GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    CTA_NOMBRE VARCHAR2(150),
    CTA_TIPO VARCHAR(30),
    CTA_BANCO NUMERIC,
    CTA_NUMERO VARCHAR2(30),
    CTA_MONEDA VARCHAR2(10),
    CONSTRAINT PK_CTA_CUENTA PRIMARY KEY(CTA_CUENTA),
    CONSTRAINT FK_BCO_BANCO_CTA_BANCO FOREIGN KEY (CTA_BANCO) REFERENCES BAN_BANCO(BCO_BANCO)
);

CREATE TABLE BAN_PROVEEDOR (
    PRO_PROVEEDOR    NUMERIC GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    PRO_NOMBRE       varchar2(150),
    PRO_DIRECCION    varchar2(150),
    PRO_NIT          varchar2(15),
    PRO_TELEFONO     number,
    PRO_CORREO       varchar2(70),
    CONSTRAINT PK_PRO_PROVEEDOR PRIMARY KEY (PRO_PROVEEDOR)
);


CREATE TABLE BAN_FACTURA(
    FAC_FACTURA NUMERIC GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    FAC_FECHA DATE,
    FAC_CONCEPTO VARCHAR2(255),
    FAC_NOMBRE VARCHAR2(255),
    FAC_NIT VARCHAR2(20),
    FAC_TOTAL DECIMAL(15,2),
    FAC_CANTIDAD INTEGER,
    FAC_METODO_PAGO VARCHAR2(100),
    CONSTRAINT PK_FAC_FACTURA PRIMARY KEY (FAC_FACTURA)
);

CREATE TABLE BAN_PROVEEDOR_FACTURA (
    PFC_PROVEEDOR_FACTURA NUMERIC GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    PFC_PROVEEDOR NUMERIC,
    PFC_FACTURA NUMERIC,
    CONSTRAINT PK_PFC_PROVEEDOR_FACTURA PRIMARY KEY (PFC_PROVEEDOR_FACTURA),
    CONSTRAINT FK_PRO_PROVEEDOR_PFC_PROVEEDOR FOREIGN KEY (PFC_PROVEEDOR) REFERENCES BAN_PROVEEDOR (PRO_PROVEEDOR),
    CONSTRAINT FK_FAC_FACTURA_PFC_FACTURA FOREIGN KEY (PFC_FACTURA) REFERENCES BAN_FACTURA (FAC_FACTURA)
);

CREATE TABLE BAN_DEPARTAMENTO (
    DEP_DEPARTAMENTO NUMERIC GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    DEP_NOMBRE VARCHAR2(100),
    DEP_JEFE VARCHAR2(100),
    DEP_CORREO VARCHAR2(100),
    CONSTRAINT PK_BAN_DEPARTAMENTO PRIMARY KEY (DEP_DEPARTAMENTO)
);

CREATE TABLE BAN_EMPLEADO (
    EMP_EMPLEADO NUMERIC GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    DEP_DEPARTAMENTO NUMERIC,
    EMP_NOMBRES VARCHAR2(100),
    EMP_APELLIDOS VARCHAR2(100),
    EMP_DPI VARCHAR2(20),
    EMP_FECHA_NAC DATE,
    EMP_PUESTO VARCHAR2(100),
    CONSTRAINT PK_EMP_EMPLEADO PRIMARY KEY (EMP_EMPLEADO),
    CONSTRAINT FK_DEP_DEPARTAMENTO FOREIGN KEY (DEP_DEPARTAMENTO) REFERENCES BAN_DEPARTAMENTO (DEP_DEPARTAMENTO)
);

CREATE TABLE BAN_ARCHIVO(
    ARC_ARCHIVO NUMERIC GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    ARC_LLAVE LONG,
    ARC_NOMBRE VARCHAR2(255),
    ARC_ARCHIVO_DATA BLOB,
    CONSTRAINT PK_ARC_ARCHIVO PRIMARY KEY (ARC_ARCHIVO)
);


/****TABLAS PRINCIPALES****/

CREATE TABLE BAN_NOTAS_CD (
    NCD_NOTAS_CD          NUMERIC GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    NCD_TIPO_NOTA         varchar2(2),
    NCD_NUM_DOC           number,
    NCD_FECHA             date,
    NCD_TOTAL             number,
    NCD_TIPO_ERROR        varchar2(100),
    NCD_NUM_NUEVA_NOTA    number,
    NCD_FECHA_NUEVA       date,
    NCD_TOTAL_NUEVO       number,
    CONSTRAINT PK_NCD_NOTAS_CD PRIMARY KEY (NCD_NOTAS_CD)
);

CREATE TABLE BAN_COMPRA_E (
    CPE_COMPRA_E             NUMERIC GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    CPE_PROVEEDOR_FACTURA    number,
    CPE_TOTAL                number,
    CPE_FECHA                date,
    CPE_CONCEPTO             varchar2(255),
    CPE_CANTIDAD             number,
    CPE_METODO_PAGO          number,
    CPE_DESCRIPCION          varchar2(500),
    CPE_NUM_COMPRA           number,
    CONSTRAINT PK_CPE_COMPRA_E PRIMARY KEY (CPE_COMPRA_E),
    CONSTRAINT FK_BAN_COMPRA_E_PFC_PROVEEDOR_FACTURA FOREIGN KEY (CPE_PROVEEDOR_FACTURA) REFERENCES BAN_PROVEEDOR_FACTURA (PFC_PROVEEDOR_FACTURA)
);

CREATE TABLE BAN_CHEQUE(
    CHQ_CHEQUE NUMERIC GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    CTA_NUMERO NUMERIC,
    CHQ_FECHA DATE,
    CHQ_BENEFICIARIO VARCHAR2(255),
    CHQ_MONTO DECIMAL(15,2),
    CHQ_MOTIVO VARCHAR2(255),
    CHQ_NUM_CHEQUE VARCHAR2(30),
    CHQ_ESTADO VARCHAR2(50),
    CONSTRAINT PK_CHQ_CHEQUE PRIMARY KEY (CHQ_CHEQUE),
    CONSTRAINT FK_CTA_NUMERO FOREIGN KEY (CTA_NUMERO) REFERENCES BAN_CUENTA (CTA_CUENTA)
);

CREATE TABLE BAN_PAGO_NOMINA(
    PGN_PAGO_NOMINA NUMERIC GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    PGN_CTA_NUMERO NUMERIC,
    PGN_EMPLEADO NUMERIC,     
    PGN_FECHA DATE,
    PGN_MONTO DECIMAL(15,2),
    PGN_CONCEPTO VARCHAR2(255),
    PGN_ESTADO_PAGO VARCHAR2(50),
    PGN_OBSERVACIONES VARCHAR2(500),
    CONSTRAINT PK_PGN_PAGO_NOMINA PRIMARY KEY (PGN_PAGO_NOMINA),
    CONSTRAINT FK_PGN_CTA_NUMERO FOREIGN KEY (PGN_CTA_NUMERO) REFERENCES BAN_CUENTA(CTA_CUENTA),
    CONSTRAINT FK_EMP_EMPLEADO_PGN_EMPLEADO FOREIGN KEY (PGN_EMPLEADO) REFERENCES BAN_EMPLEADO(EMP_EMPLEADO)

);

CREATE TABLE BAN_TRANSFERENCIA(
    TRA_TRANSFERENCIA NUMERIC GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    TRA_TIPO_CTA VARCHAR(30),
    TRA_CTA_DEBITO VARCHAR2(30),
    TRA_CTA_CREDITO VARCHAR2(30),
    TRA_FECHA DATE,
    TRA_TIPO VARCHAR2(25),
    TRA_ESTATUS VARCHAR2(10),
    TRA_NUM_TRANSFERENCIA VARCHAR2(30),
    TRA_EMPLEADO_SOLICITA NUMERIC,
    TRA_EMPLEADO_AUTORIZA NUMERIC,
    TRA_MONTO NUMERIC(18,2),
    TRA_COMENTARIO VARCHAR(1000),
    CONSTRAINT TRA_TRANSFERENCIA PRIMARY KEY (TRA_TRANSFERENCIA),
    CONSTRAINT FK_TRA_EMPLEADO_SOLICITA_EMP_EMPLEADO FOREIGN KEY (TRA_EMPLEADO_SOLICITA) REFERENCES BAN_EMPLEADO(EMP_EMPLEADO),
    CONSTRAINT FK_TRA_EMPLEADO_AUTORIZA_EMPLEADO FOREIGN KEY (TRA_EMPLEADO_AUTORIZA) REFERENCES BAN_EMPLEADO(EMP_EMPLEADO)
);


CREATE TABLE BAN_ESTADO_C (
    ESC_ESTADO_C NUMERIC GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    ESC_BANCO NUMERIC,
    ESC_CTA_NUMERO NUMERIC,
    ESC_MES VARCHAR2(30),
    ESC_FECHA DATE,
    ESC_DOCUMENTO VARCHAR2(100),
    ESC_DESCRIPCION VARCHAR2(255),
    ESC_DEBITO NUMBER(18, 2),
    ESC_CREDITO NUMBER(18, 2),
    ESC_SALDO NUMBER(18, 2),
    CONSTRAINT PK_ESC_ESTADO_C PRIMARY KEY (ESC_ESTADO_C),
    CONSTRAINT FK_BCO_BANCO_BAN_ESTADO_C FOREIGN KEY (ESC_BANCO) REFERENCES BAN_BANCO (BCO_BANCO),
    CONSTRAINT FK_CTA_NUMERO_BAN_ESTADO_C FOREIGN KEY (ESC_CTA_NUMERO) REFERENCES BAN_CUENTA (CTA_CUENTA)
);

CREATE TABLE BAN_LIBRO_AUX (
    LAX_LIBRO_AUX NUMERIC GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    LAX_BANCO NUMERIC,
    LAX_DEPARTAMENTO NUMERIC,
    LAX_FECHA DATE,
    LAX_MES VARCHAR2(30),
    LAX_FACTURA VARCHAR2(100),
    LAX_CONCEPTO VARCHAR2(255),
    LAX_DEBE NUMBER(18, 2),
    LAX_HABER NUMBER(18, 2),
    LAX_SALDO NUMBER(18, 2),
    CONSTRAINT PK_BAN_LIBRO_AUX PRIMARY KEY (LAX_LIBRO_AUX),
    CONSTRAINT FK_BCO_BANCO_LIBRO_AUX FOREIGN KEY (LAX_BANCO) REFERENCES BAN_BANCO(BCO_BANCO),
    CONSTRAINT FK_DEP_DEPARTAMENTO_LIBRO_AUX FOREIGN KEY (LAX_DEPARTAMENTO) REFERENCES BAN_DEPARTAMENTO(DEP_DEPARTAMENTO)
);



CREATE TABLE BAN_ESTADO_FINANCIERO (
    ESF_ESTADO_FINANCIERO NUMERIC GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    ESF_LIBRO_AUX NUMERIC,
    ESF_ESTADO_C NUMERIC,
    ESF_TRANSACCION NUMERIC,
    ESF_TIPO_TRANSACCION VARCHAR2(50),
    ESF_FECHA DATE,
    ESF_SALDO NUMBER(18, 2),
    ESF_TIPO_SALDO VARCHAR2(50),
    ESF_NOMBRE_LIBRO VARCHAR2(100),
    ESF_BALANCE NUMBER(18, 2),
    CONSTRAINT PK_ESF_ESTADO_FINANCIERO PRIMARY KEY (ESF_ESTADO_FINANCIERO),
    CONSTRAINT FK_LAX_LIBRO_AUX_BAN_ESTADO_FINANCIERO FOREIGN KEY (ESF_LIBRO_AUX) REFERENCES BAN_LIBRO_AUX(LAX_LIBRO_AUX),
    CONSTRAINT FK_ESC_ESTADO_C_BAN_ESTADO_FINANCIERO FOREIGN KEY (ESF_ESTADO_C) REFERENCES BAN_ESTADO_C(ESC_ESTADO_C)
);

CREATE TABLE BAN_CONCILIACION (
    CON_CONCILIACION NUMERIC GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    CON_BANCO NUMERIC,
    CON_MES VARCHAR2(30),
    CON_LAX_SALDO NUMERIC,
    CON_ESF_SALDO NUMERIC,
    CON_DIFERENCIA NUMERIC,
    CON_ESTADO VARCHAR2(30),
    CONSTRAINT PK_BAN_CONCILIACION PRIMARY KEY (CON_CONCILIACION),
    CONSTRAINT FK_BCO_BANCO_CONCILIACION FOREIGN KEY (CON_BANCO) REFERENCES BAN_BANCO(BCO_BANCO),
    CONSTRAINT FK_LAX_SALDO_CONCILIACION FOREIGN KEY (CON_LAX_SALDO) REFERENCES BAN_LIBRO_AUX(LAX_LIBRO_AUX),
    CONSTRAINT FK_ESF_SALDO_CONCILIACION FOREIGN KEY (CON_ESF_SALDO) REFERENCES BAN_ESTADO_FINANCIERO(ESF_ESTADO_FINANCIERO)
);

CREATE TABLE BAN_DEPOSITO (
    DEP_DEPOSITO NUMERIC GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    DEP_BANCO NUMERIC,
    DEP_CUENTA NUMERIC,
    DEP_TIPO_CUENTA VARCHAR2(30),
    DEP_TIPO_DEPOSITO VARCHAR2(30),
    DEP_MONTO NUMERIC(18,2),
    DEP_FECHA DATE,
    DEP_DESCRIPCION VARCHAR2(200),
    DEP_NUM_DEPOSITO VARCHAR2(30),
    CONSTRAINT PK_DEP_DEPOSITO PRIMARY KEY (DEP_DEPOSITO),
    CONSTRAINT FK_BCO_BANCO_DEP_BANCO FOREIGN KEY (DEP_BANCO) REFERENCES BAN_BANCO (BCO_BANCO)
);


CREATE TABLE BAN_P_SERVICIO (
    PSV_P_SERVICIO NUMERIC GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    PSV_PROVEEDOR_FACTURA NUMERIC,
    PSV_TIPO_SERVICIO VARCHAR2(30),
    PSV_NUM_DOCUMENTO VARCHAR2(30),
    PSV_MONEDA VARCHAR2(10),
    PSV_METODO_PAGO VARCHAR2(50),
    PSV_MONTO_TOTAL NUMERIC(18,2),
    PSV_FECHA DATE,
    PSV_DESCRIPCION VARCHAR2(200),
    CONSTRAINT PK_PSV_P_SERVICIO PRIMARY KEY (PSV_P_SERVICIO),
    CONSTRAINT FK_PFC_PROVEEDOR_FACTURA_PSV_PROVEEDOR_FACTURA FOREIGN KEY (PSV_PROVEEDOR_FACTURA) REFERENCES BAN_PROVEEDOR_FACTURA (PFC_PROVEEDOR_FACTURA)
);

INSERT INTO BAN_BANCO (BCO_NOMBRE,BCO_PAIS) VALUES('BANCO INDUSTRIAL, S.A.', 'GUATEMALA');
INSERT INTO BAN_BANCO (BCO_NOMBRE,BCO_PAIS) VALUES('BANCO DE DESARROLLO RURAL, SOCIEDAD AN�NIMA', 'GUATEMALA');
INSERT INTO BAN_BANCO (BCO_NOMBRE,BCO_PAIS) VALUES('BANCO AGROMERCANTIL DE GUATEMALA', 'GUATEMALA');
INSERT INTO BAN_BANCO (BCO_NOMBRE,BCO_PAIS) VALUES('BANK OF AMERICA, NOS ACCOUNT', 'ESTADOS UNIDOS');


INSERT INTO BAN_CUENTA (CTA_NOMBRE,CTA_TIPO,CTA_BANCO, CTA_NUMERO, CTA_MONEDA)
    VALUES('EMPRESA LA GRATITUD SOCIEDAD ANONIMA', 'DM', 1, '4050019786','GTQ');

INSERT INTO BAN_CUENTA (CTA_NOMBRE,CTA_TIPO,CTA_BANCO, CTA_NUMERO, CTA_MONEDA)
    VALUES('EMPRESA LA GRATITUD SOCIEDAD ANONIMA', 'DM', 2, '3033001234','GTQ');

INSERT INTO BAN_CUENTA (CTA_NOMBRE,CTA_TIPO,CTA_BANCO, CTA_NUMERO, CTA_MONEDA)
    VALUES('EMPRESA LA GRATITUD SOCIEDAD ANONIMA', 'DM', 3, '0000654321','GTQ');

INSERT INTO BAN_CUENTA (CTA_NOMBRE,CTA_TIPO,CTA_BANCO, CTA_NUMERO, CTA_MONEDA)
    VALUES('EMPRESA LA GRATITUD SOCIEDAD ANONIMA', 'DM', 4, '004080047204','USD');
