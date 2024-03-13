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
    PRO_CORREO       varchar2(70)
    CONSTRAINT BAN_PROVEEDOR_PRO_PROVEEDOR_pk primary key
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
    NCD_TIPO_NOTA         number,
    NCD_NUM_DOC           number,
    NCD_FECHA             date,
    NCD_TOTAL             number,
    NCD_TIPO_ERROR        varchar2(100),
    NCD_NUM_NUEVA_NOTA    number,
    NCD_FECHA_NUEVA       date,
    NCD_TOTAL_NUEVO       number,
    constraint BAN_NOTAS_CD_NCD_NOTAS_CD_pk primary key
);

create table BAN_COMPRA_E (
    CPE_COMPRA_E             NUMERIC GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    PFC_PROVEEDOR_FACTURA    number,
    CPE_TOTAL                number,
    CPE_FECHA                date,
    CPE_CONCEPTO             varchar2(4000 char),
    CPE_CANTIDAD             number,
    CPE_METODO_PAGO          number,
    CPE_DESCRIPCION          varchar2(4000 char),
    CPE_NUM_COMPRA           number,
    constraint BAN_COMPRA_E_CPE_COMPRA_E_pk primary key,
    constraint BAN_COMPRA_E_PFC_PROVEEDOR_FACTURA_fk references table_BAN_PROVEEDOR_FACTURA,
);
