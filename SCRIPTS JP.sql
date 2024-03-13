-- create tables

create table BAN_PROVEEDOR (
    PRO_PROVEEDOR    number not null
                     constraint BAN_PROVEEDOR_PRO_PROVEEDOR_pk primary key,
    PRO_NOMBRE       varchar2(150 char),
    PRO_DIRECCION    varchar2(4000 char),
    PRO_NIT          varchar2(15 char),
    PRO_TELEFONO     number,
    PRO_CORREO       varchar2(4000 char)
);



-- create tables

create table BAN_NOTAS_CD (
    NCD_NOTAS_CD          number not null
                          constraint BAN_NOTAS_CD_NCD_NOTAS_CD_pk primary key,
    NCD_TPO_NOTA          number,
    NCD_NUM_DOC           number,
    NCD_FECHA             date,
    NCD_TOTAL             number,
    NCD_TIPO_ERROR        varchar2(4000 char),
    NCD_NUM_NUEVA_NOTA    number,
    NCD_FECHA_NUEVA       date,
    NCD_TOTAL_NUEVO       number
);


-- create tables

create table BAN_COMPRA_E (
    CPE_COMPRA_E             number not null
                             constraint BAN_COMPRA_E_CPE_COMPRA_E_pk primary key,
    PFC_PROVEEDOR_FACTURA    number
                             constraint BAN_COMPRA_E_PFC_PROVEEDOR_FACTURA_fk
                             references table_BAN_PROVEEDOR_FACTURA,
    CPE_TOTAL                number,
    CPE_FECHA                date,
    CPE_CONCEPTO             varchar2(4000 char),
    CPE_CANTIDAD             number,
    CPE_METODO_PAGO          number,
    CPE_DESCRIPCION          varchar2(4000 char),
    CPE_NUM_COMPRA           number
);

-- table index
create index BAN_COMPRA_E_i1 on BAN_COMPRA_E (PFC_PROVEEDOR_FACTURA);
