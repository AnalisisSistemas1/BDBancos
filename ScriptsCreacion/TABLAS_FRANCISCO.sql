DROP TABLE IF EXISTS BAN_BANCO;
DROP TABLE IF EXISTS BAN_CUENTA;
DROP TABLE IF EXISTS BAN_ARCHIVO;
DROP TABLE IF EXISTS BAN_TRANSFERENCIA;

/*****************CATALOGOS******************/

CREATE TABLE BAN_BANCO(
    BCO_BANCO NUMERIC GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    BCO_NOMBRE VARCHAR2(100),
    BCO_PAIS VARCHAR2(30),
    CONSTRAINT BCO_BANCO PRIMARY KEY (BCO_BANCO)
);

CREATE TABLE BAN_CUENTA(
    CTA_CUENTA NUMERIC GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    CTA_NOMBRE VARCHAR2(150),
    CTA_TIPO VARCHAR(30),
    CTA_BANCO NUMERIC,
    CTA_NUMERO VARCHAR2(30),
    CTA_MONEDA VARCHAR2(10),
    CONSTRAINT CTA_CUENTA PRIMARY KEY(CTA_CUENTA),
    CONSTRAINT FK_BCO_BANCO_CTA_BANCO FOREIGN KEY (CTA_BANCO) REFERENCES BAN_BANCO(BCO_BANCO)
);

CREATE TABLE BAN_ARCHIVO(
    ARC_ARCHIVO NUMERIC GENERATED ALWAYS AS IDENTITY (START WITH 1 INCREMENT BY 1) NOT NULL,
    ARC_LLAVE LONG,
    ARC_NOMBRE VARCHAR2(255),
    ARC_ARCHIVO_DATA BLOB,
    CONSTRAINT ARC_ARCHIVO PRIMARY KEY (ARC_ARCHIVO)
);


/*****************LLENADO DE 2 CATALOGOS******************/

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

/*ESTE INSERT MUESTRA UN ERROR YA QUE EL BANCO CON ID NO EXISTE*/
INSERT INTO BAN_CUENTA (CTA_NOMBRE,CTA_TIPO,CTA_BANCO, CTA_NUMERO, CTA_MONEDA)
    VALUES('TEST', 'DM', 5, '123','GTQ');


SELECT * 
FROM BAN_CUENTA A
LEFT JOIN BAN_BANCO B ON A.CTA_BANCO = B.BCO_BANCO;

/*************BAN_TRANSFERENCIA**************/

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
