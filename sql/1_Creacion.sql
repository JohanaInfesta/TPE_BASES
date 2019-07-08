-- tables
-- Table: GR02_ALQUILER
CREATE TABLE GR02_ALQUILER (
    id_alquiler int  NOT NULL,
    id_cliente int  NOT NULL,
    fecha_desde date  NOT NULL,
    fecha_hasta date  NULL,
    importe_dia decimal(10,2)  NOT NULL,
    CONSTRAINT PK_GR02_ALQUILER PRIMARY KEY (id_alquiler)
);

-- Table: GR02_ALQUILER_POSICIONES
CREATE TABLE GR02_ALQUILER_POSICIONES (
    id_alquiler int  NOT NULL,
    nro_posicion int  NOT NULL,
    nro_estanteria int  NOT NULL,
    nro_fila int  NOT NULL,
    estado boolean  NOT NULL,
    CONSTRAINT PK_GR02_ALQUILER_POSICIONES PRIMARY KEY (id_alquiler,nro_posicion,nro_estanteria,nro_fila)
);

-- Table: GR02_CLIENTE
CREATE TABLE GR02_CLIENTE (
    cuit_cuil int  NOT NULL,
    apellido varchar(60)  NOT NULL,
    nombre varchar(40)  NOT NULL,
    fecha_alta date  NOT NULL,
    CONSTRAINT PK_GR02_CLIENTE PRIMARY KEY (cuit_cuil)
);

-- Table: GR02_ESTANTERIA
CREATE TABLE GR02_ESTANTERIA (
    nro_estanteria int  NOT NULL,
    nombre_estanteria varchar(80)  NOT NULL,
    CONSTRAINT PK_GR02_ESTANTERIA PRIMARY KEY (nro_estanteria)
);

-- Table: GR02_FILA
CREATE TABLE GR02_FILA (
    nro_estanteria int  NOT NULL,
    nro_fila int  NOT NULL,
    nombre_fila varchar(80)  NOT NULL,
    peso_max_kg decimal(10,2)  NOT NULL,
    alto_max_cm decimal(10,2)  NOT NULL,
    CONSTRAINT PK_GR02_FILA PRIMARY KEY (nro_estanteria,nro_fila)
);

-- Table: GR02_MOVIMIENTO
CREATE TABLE GR02_MOVIMIENTO (
    id_movimiento int  NOT NULL,
    fecha timestamp  NOT NULL,
    responsable varchar(80)  NOT NULL,
    tipo char(1)  NOT NULL,
    CONSTRAINT PK_GR02_MOVIMIENTO PRIMARY KEY (id_movimiento)
);

-- Table: GR02_MOV_ENTRADA
CREATE TABLE GR02_MOV_ENTRADA (
    id_movimiento int  NOT NULL,
    transporte varchar(80)  NOT NULL,
    guia varchar(80)  NOT NULL,
    cod_pallet varchar(20)  NOT NULL,
    id_alquiler int  NOT NULL,
    nro_posicion int  NOT NULL,
    nro_estanteria int  NOT NULL,
    nro_fila int  NOT NULL,
    CONSTRAINT PK_GR02_MOV_ENTRADA PRIMARY KEY (id_movimiento)
);

-- Table: GR02_MOV_INTERNO
CREATE TABLE GR02_MOV_INTERNO (
    id_movimiento int  NOT NULL,
    razon varchar(200)  NULL,
    nro_posicion int  NOT NULL,
    nro_estanteria int  NOT NULL,
    nro_fila int  NOT NULL,
    id_mov_anterior int  NOT NULL,
    id_mov_entrada int NOT NULL,
    CONSTRAINT PK_GR02_MOV_INTERNO PRIMARY KEY (id_movimiento)
);

-- Table: GR02_MOV_SALIDA
CREATE TABLE GR02_MOV_SALIDA (
    id_movimiento int  NOT NULL,
    transporte varchar(80)  NOT NULL,
    guia varchar(80)  NOT NULL,
    id_mov_entrada int  NOT NULL,
    id_mov_anterior int NOT NULL,
    CONSTRAINT PK_GR02_MOV_SALIDA PRIMARY KEY (id_movimiento)
);

-- Table: GR02_PALLET
CREATE TABLE GR02_PALLET (
    cod_pallet varchar(20)  NOT NULL,
    descripcion varchar(200)  NOT NULL,
    peso decimal(10,2)  NOT NULL,
    CONSTRAINT PK_GR02_PALLET PRIMARY KEY (cod_pallet)
);

-- Table: GR02_POSICION
CREATE TABLE GR02_POSICION (
    nro_posicion int  NOT NULL,
    nro_estanteria int  NOT NULL,
    nro_fila int  NOT NULL,
    tipo varchar(40)  NOT NULL,
    pos_global int  NOT NULL,
    CONSTRAINT UQ_GR02_POSICION_POS_GLOBAL UNIQUE (pos_global)   ,
    CONSTRAINT PK_GR02_POSICION PRIMARY KEY (nro_posicion,nro_estanteria,nro_fila)
);

-- foreign keys
-- Reference: FK_GR02_ALQUILER_CLIENTE (table: GR02_ALQUILER)
ALTER TABLE GR02_ALQUILER ADD CONSTRAINT FK_GR02_ALQUILER_CLIENTE
    FOREIGN KEY (id_cliente)
    REFERENCES GR02_CLIENTE (cuit_cuil)  
;

-- Reference: FK_GR02_ALQUILER_POSICIONES_ALQUILER (table: GR02_ALQUILER_POSICIONES)
ALTER TABLE GR02_ALQUILER_POSICIONES ADD CONSTRAINT FK_GR02_ALQUILER_POSICIONES_ALQUILER
    FOREIGN KEY (id_alquiler)
    REFERENCES GR02_ALQUILER (id_alquiler)  
;

-- Reference: FK_GR02_ALQUILER_POSICIONES_POSICION (table: GR02_ALQUILER_POSICIONES)
ALTER TABLE GR02_ALQUILER_POSICIONES ADD CONSTRAINT FK_GR02_ALQUILER_POSICIONES_POSICION
    FOREIGN KEY (nro_posicion, nro_estanteria, nro_fila)
    REFERENCES GR02_POSICION (nro_posicion, nro_estanteria, nro_fila)  
;

-- Reference: FK_GR02_FILA_ESTANTERIA (table: GR02_FILA)
ALTER TABLE GR02_FILA ADD CONSTRAINT FK_GR02_FILA_ESTANTERIA
    FOREIGN KEY (nro_estanteria)
    REFERENCES GR02_ESTANTERIA (nro_estanteria)  
;

-- Reference: FK_GR02_MOV_ENTRADA_ALQUILER_POSICIONES (table: GR02_MOV_ENTRADA)
ALTER TABLE GR02_MOV_ENTRADA ADD CONSTRAINT FK_GR02_MOV_ENTRADA_ALQUILER_POSICIONES
    FOREIGN KEY (id_alquiler, nro_posicion, nro_estanteria, nro_fila)
    REFERENCES GR02_ALQUILER_POSICIONES (id_alquiler, nro_posicion, nro_estanteria, nro_fila)  
;

-- Reference: FK_GR02_MOV_ENTRADA_MOVIMIENTO (table: GR02_MOV_ENTRADA)
ALTER TABLE GR02_MOV_ENTRADA ADD CONSTRAINT FK_GR02_MOV_ENTRADA_MOVIMIENTO
    FOREIGN KEY (id_movimiento)
    REFERENCES GR02_MOVIMIENTO (id_movimiento)  
;

-- Reference: FK_GR02_MOV_ENTRADA_PALLET (table: GR02_MOV_ENTRADA)
ALTER TABLE GR02_MOV_ENTRADA ADD CONSTRAINT FK_GR02_MOV_ENTRADA_PALLET
    FOREIGN KEY (cod_pallet)
    REFERENCES GR02_PALLET (cod_pallet)  
;

-- Reference: FK_GR02_MOV_INTERNO_MOVIMIENTO (table: GR02_MOV_INTERNO)
ALTER TABLE GR02_MOV_INTERNO ADD CONSTRAINT FK_GR02_MOV_INTERNO_MOVIMIENTO
    FOREIGN KEY (id_movimiento)
    REFERENCES GR02_MOVIMIENTO (id_movimiento)  
;

-- Reference: FK_GR02_MOV_INTERNO_POSICION (table: GR02_MOV_INTERNO)
ALTER TABLE GR02_MOV_INTERNO ADD CONSTRAINT FK_GR02_MOV_INTERNO_POSICION
    FOREIGN KEY (nro_posicion, nro_estanteria, nro_fila)
    REFERENCES GR02_POSICION (nro_posicion, nro_estanteria, nro_fila)  
;

-- Reference: FK_GR02_MOV_INTERNO_MOV_ENTRADA (table: GR02_MOV_INTERNO)
ALTER TABLE GR02_MOV_INTERNO ADD constraint FK_GR02_MOV_INTERNO_MOV_ENTRADA
	FOREIGN KEY (id_mov_entrada)
    REFERENCES GR02_MOV_ENTRADA (id_movimiento)
;

-- Reference: FK_GR02_MOV_SALIDA_MOVIMIENTO (table: GR02_MOV_SALIDA)
ALTER TABLE GR02_MOV_SALIDA ADD CONSTRAINT FK_GR02_MOV_SALIDA_MOVIMIENTO
    FOREIGN KEY (id_movimiento)
    REFERENCES GR02_MOVIMIENTO (id_movimiento)  
;

-- Reference: GR02_MOV_SALIDA_MOVIMIENTO (table: GR02_MOV_SALIDA)
ALTER TABLE GR02_MOV_INTERNO ADD CONSTRAINT FK_GR02_MOV_INTERNO_MOVIMIENTO_ANTERIOR
    FOREIGN KEY (id_mov_anterior)
    REFERENCES GR02_MOVIMIENTO (id_movimiento)  
;

-- Reference: FK_GR02_POSICION_FILA (table: GR02_POSICION)
ALTER TABLE GR02_POSICION ADD CONSTRAINT FK_GR02_POSICION_FILA
    FOREIGN KEY (nro_estanteria, nro_fila)
    REFERENCES GR02_FILA (nro_estanteria, nro_fila)  
;

-- Reference: GR02_MOV_INTERNO_MOVIMIENTO (table: GR02_MOV_INTERNO)
ALTER TABLE GR02_MOV_SALIDA ADD CONSTRAINT FK_GR02_MOV_SALIDA_MOVIMIENTO_ANTERIOR
    FOREIGN KEY (id_mov_anterior)
    REFERENCES GR02_MOVIMIENTO (id_movimiento)  
;

-- Reference: GR02_MOV_SALIDA_MOV_ENTRADA (table: GR02_MOV_SALIDA)
ALTER TABLE GR02_MOV_SALIDA ADD CONSTRAINT FK_GR02_MOV_SALIDA_MOV_ENTRADA
    FOREIGN KEY (id_mov_entrada)
    REFERENCES GR02_MOV_ENTRADA (id_movimiento)  
;

-- End of file.

