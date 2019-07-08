--A. AJUSTE DEL ESQUEMA
--INSERCION DE DATOS, SEPARADOS POR TABLA Y RESPETANDO EL ORDEN DE CREACION
--INSERT INTO gr02_cliente
INSERT INTO gr02_cliente VALUES (1111, 'RODRIGUEZ', 'Carla', '2018-11-03');
INSERT INTO gr02_cliente VALUES (1112, 'PEREZ', 'Felipe','2019-03-24');
INSERT INTO gr02_cliente VALUES (1113, 'LOPEZ', 'Santiago', '2019-04-25');
INSERT INTO gr02_cliente VALUES (1114, 'VERA', 'Maria', '2018-06-30');
INSERT INTO gr02_cliente VALUES (1115, 'MORA', 'Rosa', '2018-09-17');

--INSERT INTO gr02_alquiler
INSERT INTO gr02_alquiler VALUES (1, 1111, '2018-11-03', '2020-01-30', 25);
INSERT INTO gr02_alquiler VALUES (2, 1112, '2019-03-24', '2020-01-30', 25);
INSERT INTO gr02_alquiler VALUES (3, 1113, '2019-04-25', '2020-01-30', 25);
INSERT INTO gr02_alquiler VALUES (4, 1114, '2018-06-30', '2020-01-30', 25);
INSERT INTO gr02_alquiler VALUES (5, 1115, '2018-09-17', '2020-01-30', 25);

--INSERT INTO gr02_estanteria - rango 1 a 5
INSERT INTO gr02_estanteria VALUES( 1, 'estanteria uno');
INSERT INTO gr02_estanteria VALUES( 2, 'estanteria dos');
INSERT INTO gr02_estanteria VALUES( 3, 'estanteria tres');
INSERT INTO gr02_estanteria VALUES( 4, 'estanteria cuatro');
INSERT INTO gr02_estanteria VALUES( 5, 'estanteria cinco');

--INSERT INTO gr02_fila - rango 1 a 5
INSERT INTO gr02_fila VALUES (1, 1, 'fila uno', 500, 100);
INSERT INTO gr02_fila VALUES (2, 1, 'fila dos', 500, 100);
INSERT INTO gr02_fila VALUES (3, 1, 'fila tres', 500, 100);
INSERT INTO gr02_fila VALUES (4, 1, 'fila cuatro', 500, 100);
INSERT INTO gr02_fila VALUES (5, 1, 'fila cinco', 500, 100);
INSERT INTO gr02_fila VALUES (1, 2, 'fila uno', 500, 100);
INSERT INTO gr02_fila VALUES (2, 2, 'fila dos', 500, 100);
INSERT INTO gr02_fila VALUES (3, 2, 'fila tres', 500, 100);
INSERT INTO gr02_fila VALUES (4, 2, 'fila cuatro', 500, 100);
INSERT INTO gr02_fila VALUES (5, 2, 'fila cinco', 500, 100);
INSERT INTO gr02_fila VALUES (1, 3, 'fila uno', 500, 100);
INSERT INTO gr02_fila VALUES (2, 3, 'fila dos', 500, 100);
INSERT INTO gr02_fila VALUES (3, 3, 'fila tres', 500, 100);
INSERT INTO gr02_fila VALUES (4, 3, 'fila cuatro', 500, 100);
INSERT INTO gr02_fila VALUES (5, 3, 'fila cinco', 500, 100);
INSERT INTO gr02_fila VALUES (1, 4, 'fila uno', 500, 100);
INSERT INTO gr02_fila VALUES (2, 4, 'fila dos', 500, 100);
INSERT INTO gr02_fila VALUES (3, 4, 'fila tres', 500, 100);
INSERT INTO gr02_fila VALUES (4, 4, 'fila cuatro', 500, 100);
INSERT INTO gr02_fila VALUES (5, 4, 'fila cinco', 500, 100);
INSERT INTO gr02_fila VALUES (1, 5, 'fila uno', 500, 100);
INSERT INTO gr02_fila VALUES (2, 5, 'fila dos', 500, 100);
INSERT INTO gr02_fila VALUES (3, 5, 'fila tres', 500, 100);
INSERT INTO gr02_fila VALUES (4, 5, 'fila cuatro', 500, 100);
INSERT INTO gr02_fila VALUES (5, 5, 'fila cinco', 500, 100);

--INSERT INTO gr02_posicion - rango 1 a 4
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global)  VALUES (1, 1, 1, 'general', 111);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global)  VALUES (1, 1, 2, 'general', 112);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global)  VALUES (1, 1, 3, 'general', 113);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global)  VALUES (1, 1, 4, 'general', 114);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global)  VALUES (1, 1, 5, 'general', 115);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global)  VALUES (1, 2, 1, 'general', 121);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global)  VALUES (1, 2, 2, 'general', 122);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global)  VALUES (1, 2, 3, 'general', 123);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global)  VALUES (1, 2, 4, 'general', 124);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global)  VALUES (1, 2, 5, 'general', 125);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global)  VALUES (1, 3, 1, 'general', 131);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global)  VALUES (1, 3, 2, 'general', 132);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global)  VALUES (1, 3, 3, 'general', 133);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global)  VALUES (1, 3, 4, 'general', 134);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global)  VALUES (1, 3, 5, 'general', 135);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global)  VALUES (1, 4, 1, 'general', 141);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global)  VALUES (1, 4, 2, 'general', 142);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global)  VALUES (1, 4, 3, 'general', 143);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global)  VALUES (1, 4, 4, 'general', 144);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global)  VALUES (1, 4, 5, 'general', 145);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global)  VALUES (1, 5, 1, 'general', 151);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global)  VALUES (1, 5, 2, 'general', 152);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global)  VALUES (1, 5, 3, 'general', 153);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global)  VALUES (1, 5, 4, 'general', 154);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global)  VALUES (1, 5, 5, 'general', 155);

INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (2, 1, 1, 'vidrio', 211);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (2, 1, 2, 'vidrio', 212);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (2, 1, 3, 'vidrio', 213);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (2, 1, 4, 'vidrio', 214);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (2, 1, 5, 'vidrio', 215);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (2, 2, 1, 'vidrio', 221);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (2, 2, 2, 'vidrio', 222);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (2, 2, 3, 'vidrio', 223);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (2, 2, 4, 'vidrio', 224);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (2, 2, 5, 'vidrio', 225);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (2, 3, 1, 'vidrio', 231);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (2, 3, 2, 'vidrio', 232);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (2, 3, 3, 'vidrio', 233);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (2, 3, 4, 'vidrio', 234);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (2, 3, 5, 'vidrio', 235);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (2, 4, 1, 'vidrio', 241);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (2, 4, 2, 'vidrio', 242);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (2, 4, 3, 'vidrio', 243);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (2, 4, 4, 'vidrio', 244);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (2, 4, 5, 'vidrio', 245);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (2, 5, 1, 'vidrio', 251);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (2, 5, 2, 'vidrio', 252);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (2, 5, 3, 'vidrio', 253);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (2, 5, 4, 'vidrio', 254);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (2, 5, 5, 'vidrio', 255);

INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (3, 1, 1, 'insecticidas', 311);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (3, 1, 2, 'insecticidas', 312);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (3, 1, 3, 'insecticidas', 313);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (3, 1, 4, 'insecticidas', 314);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (3, 1, 5, 'insecticidas', 315);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (3, 2, 1, 'insecticidas', 321);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (3, 2, 2, 'insecticidas', 322);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (3, 2, 3, 'insecticidas', 323);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (3, 2, 4, 'insecticidas', 324);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (3, 2, 5, 'insecticidas', 325);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (3, 3, 1, 'insecticidas', 331);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (3, 3, 2, 'insecticidas', 332);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (3, 3, 3, 'insecticidas', 333);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (3, 3, 4, 'insecticidas', 334);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (3, 3, 5, 'insecticidas', 335);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (3, 4, 1, 'insecticidas', 341);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (3, 4, 2, 'insecticidas', 342);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (3, 4, 3, 'insecticidas', 343);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (3, 4, 4, 'insecticidas', 344);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (3, 4, 5, 'insecticidas', 345);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (3, 5, 1, 'insecticidas', 351);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (3, 5, 2, 'insecticidas', 352);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (3, 5, 3, 'insecticidas', 353);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (3, 5, 4, 'insecticidas', 354);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (3, 5, 5, 'insecticidas', 355);

INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (4, 1, 1, 'inflamable', 411);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (4, 1, 2, 'inflamable', 412);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (4, 1, 3, 'inflamable', 413);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (4, 1, 4, 'inflamable', 414);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (4, 1, 5, 'inflamable', 415);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (4, 2, 1, 'inflamable', 421);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (4, 2, 2, 'inflamable', 422);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (4, 2, 3, 'inflamable', 423);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (4, 2, 4, 'inflamable', 424);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (4, 2, 5, 'inflamable', 425);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (4, 3, 1, 'inflamable', 431);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (4, 3, 2, 'inflamable', 432);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (4, 3, 3, 'inflamable', 433);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (4, 3, 4, 'inflamable', 434);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (4, 3, 5, 'inflamable', 435);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (4, 4, 1, 'inflamable', 441);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (4, 4, 2, 'inflamable', 442);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (4, 4, 3, 'inflamable', 443);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (4, 4, 4, 'inflamable', 444);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (4, 4, 5, 'inflamable', 445);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (4, 5, 1, 'inflamable', 451);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (4, 5, 2, 'inflamable', 452);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (4, 5, 3, 'inflamable', 453);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (4, 5, 4, 'inflamable', 454);
INSERT INTO gr02_posicion (nro_estanteria, nro_fila, nro_posicion, tipo, pos_global) VALUES (4, 5, 5, 'inflamable', 455);

--INSER INTO gr02_alquiler_posiciones
INSERT INTO gr02_alquiler_posiciones (id_alquiler, nro_estanteria, nro_fila, nro_posicion, estado) VALUES (1, 1, 1, 1, false);
INSERT INTO gr02_alquiler_posiciones (id_alquiler, nro_estanteria, nro_fila, nro_posicion, estado) VALUES (2, 1, 3, 1, false);
INSERT INTO gr02_alquiler_posiciones (id_alquiler, nro_estanteria, nro_fila, nro_posicion, estado) VALUES (3, 4, 1, 1, false);
INSERT INTO gr02_alquiler_posiciones (id_alquiler, nro_estanteria, nro_fila, nro_posicion, estado) VALUES (4, 2, 4, 3, false);
INSERT INTO gr02_alquiler_posiciones (id_alquiler, nro_estanteria, nro_fila, nro_posicion, estado) VALUES (5, 3, 5, 5, false);
INSERT INTO gr02_alquiler_posiciones (id_alquiler, nro_estanteria, nro_fila, nro_posicion, estado) VALUES (1, 2, 1, 1, false);
INSERT INTO gr02_alquiler_posiciones (id_alquiler, nro_estanteria, nro_fila, nro_posicion, estado) VALUES (2, 2, 3, 1, false);
INSERT INTO gr02_alquiler_posiciones (id_alquiler, nro_estanteria, nro_fila, nro_posicion, estado) VALUES (3, 4, 5, 1, false);
INSERT INTO gr02_alquiler_posiciones (id_alquiler, nro_estanteria, nro_fila, nro_posicion, estado) VALUES (4, 2, 5, 2, false);
INSERT INTO gr02_alquiler_posiciones (id_alquiler, nro_estanteria, nro_fila, nro_posicion, estado) VALUES (5, 2, 2, 2, false);

--INSERT INTO gr02_pallet
INSERT INTO gr02_pallet VALUES ('111-C', 'pallet uno', 25);
INSERT INTO gr02_pallet VALUES ('112-A', 'pallet dos', 99);
INSERT INTO gr02_pallet VALUES ('113-B', 'pallet tres', 32);
INSERT INTO gr02_pallet VALUES ('114-D', 'pallet cuatro', 92);
INSERT INTO gr02_pallet VALUES ('115-A', 'pallet cinco', 100);

--INSERT INTO gr02_movimiento
INSERT INTO gr02_movimiento VALUES (1, '2018-11-03', 'Jorge', 'E');
INSERT INTO gr02_movimiento VALUES (2, '2019-03-24', 'Juan', 'E');
INSERT INTO gr02_movimiento VALUES (3, '2019-04-25', 'Javier', 'E');
INSERT INTO gr02_movimiento VALUES (4, '2018-06-30', 'Tomas', 'E');
INSERT INTO gr02_movimiento VALUES (5, '2018-09-17', 'Matias', 'E');

INSERT INTO gr02_movimiento VALUES (6, '2018-12-23', 'Juan', 'I');
INSERT INTO gr02_movimiento VALUES (7, '2019-04-24', 'Juan', 'I');
INSERT INTO gr02_movimiento VALUES (8, '2019-05-02', 'Jorge', 'I');
INSERT INTO gr02_movimiento VALUES (9, '2018-08-23', 'Tomas', 'I');
INSERT INTO gr02_movimiento VALUES (10, '2019-03-17', 'Matias', 'I');

INSERT INTO gr02_movimiento VALUES (11, '2019-04-03', 'Jorge', 'S');
INSERT INTO gr02_movimiento VALUES (12, '2019-05-24', 'Juan', 'S');
INSERT INTO gr02_movimiento VALUES (13, '2019-06-01', 'Javier', 'S');
INSERT INTO gr02_movimiento VALUES (14, '2018-10-09', 'Tomas', 'S');
INSERT INTO gr02_movimiento VALUES (15, '2019-04-17', 'Matias', 'S');

--INSER INTO gr02_mov_entrada
INSERT INTO gr02_mov_entrada VALUES (1, 'Transport srl', 'pq12345se', '111-C', 1, 1, 1, 1);
UPDATE gr02_alquiler_posiciones SET estado = true WHERE id_alquiler = 1 AND nro_posicion = 1 AND nro_estanteria = 1 AND nro_fila = 1;
INSERT INTO gr02_mov_entrada VALUES (2, 'Envios sa', 'pq23456xs', '112-A', 2, 1, 3, 1);
UPDATE gr02_alquiler_posiciones SET estado = true WHERE id_alquiler = 2 AND nro_posicion = 1 AND nro_estanteria = 3 AND nro_fila = 1;
INSERT INTO gr02_mov_entrada VALUES (3, 'Transportion sa', 'pq23415ad', '113-B', 3, 4, 1, 1);
UPDATE gr02_alquiler_posiciones SET estado = true WHERE id_alquiler = 3 AND nro_posicion = 4 AND nro_estanteria = 1 AND nro_fila = 1;
INSERT INTO gr02_mov_entrada VALUES (4, 'Global Pocket srl', 'pq34563gh', '114-D', 4, 2, 4, 3);
UPDATE gr02_alquiler_posiciones SET estado = true WHERE id_alquiler = 4 AND nro_posicion = 2 AND nro_estanteria = 4 AND nro_fila = 3;
INSERT INTO gr02_mov_entrada VALUES (5, 'Envios sa', 'pq34567lw', '115-A', 5, 3, 5, 5);
UPDATE gr02_alquiler_posiciones SET estado = true WHERE id_alquiler = 5 AND nro_posicion = 3 AND nro_estanteria = 5 AND nro_fila = 5;

--INSERT INTO gr02_mov_interno
INSERT INTO gr02_mov_interno VALUES (6, 'CAMBIO DE POSICION', 2, 1, 1, 1, 1);
UPDATE gr02_alquiler_posiciones SET estado = false WHERE id_alquiler = 1 AND nro_posicion = 1 AND nro_estanteria = 1 AND nro_fila = 1;
UPDATE gr02_alquiler_posiciones SET estado = true WHERE id_alquiler = 1 AND nro_posicion = 2 AND nro_estanteria = 1 AND nro_fila = 1;
INSERT INTO gr02_mov_interno VALUES (7, 'CAMBIO DE POSICION', 1, 1, 1, 6, 1);
UPDATE gr02_alquiler_posiciones SET estado = false WHERE id_alquiler = 1 AND nro_posicion = 2 AND nro_estanteria = 1 AND nro_fila = 1;
UPDATE gr02_alquiler_posiciones SET estado = true WHERE id_alquiler = 1 AND nro_posicion = 1 AND nro_estanteria = 1 AND nro_fila = 1;
INSERT INTO gr02_mov_interno VALUES (8, 'CAMBIO DE POSICION', 4, 5, 1, 3, 3);
UPDATE gr02_alquiler_posiciones SET estado = false WHERE id_alquiler = 3 AND nro_posicion = 4 AND nro_estanteria = 1 AND nro_fila = 1;
UPDATE gr02_alquiler_posiciones SET estado = true WHERE id_alquiler = 3 AND nro_posicion = 4 AND nro_estanteria = 5 AND nro_fila = 1;
INSERT INTO gr02_mov_interno VALUES (9, 'CAMBIO DE POSICION', 2, 5, 2, 4, 4);
UPDATE gr02_alquiler_posiciones SET estado = false WHERE id_alquiler = 4 AND nro_posicion = 2 AND nro_estanteria = 4 AND nro_fila = 3;
UPDATE gr02_alquiler_posiciones SET estado = true WHERE id_alquiler = 4 AND nro_posicion = 2 AND nro_estanteria = 5 AND nro_fila = 2;
INSERT INTO gr02_mov_interno VALUES (10, 'CAMBIO DE POSICION', 2, 2, 2, 5, 5);
UPDATE gr02_alquiler_posiciones SET estado = false WHERE id_alquiler = 5 AND nro_posicion = 3 AND nro_estanteria = 5 AND nro_fila = 5;
UPDATE gr02_alquiler_posiciones SET estado = true WHERE id_alquiler = 5 AND nro_posicion = 2 AND nro_estanteria = 2 AND nro_fila = 2;

--INSERT INTO gr02_mov_salida
INSERT INTO gr02_mov_salida VALUES (11, 'Envios sa', 'pq12345se', 1, 7);
UPDATE gr02_alquiler_posiciones SET estado = false WHERE id_alquiler = 1 AND nro_posicion = 1 AND nro_estanteria = 1 AND nro_fila = 1;
INSERT INTO gr02_mov_salida VALUES (12, 'Transportion sa', 'pq23456xs', 2, 2);
UPDATE gr02_alquiler_posiciones SET estado = false WHERE id_alquiler = 2 AND nro_posicion = 1 AND nro_estanteria = 3 AND nro_fila = 1;
INSERT INTO gr02_mov_salida VALUES (14, 'Envios sa', 'pq34563gh', 4, 9);
UPDATE gr02_alquiler_posiciones SET estado = false WHERE id_alquiler = 4 AND nro_posicion = 2 AND nro_estanteria = 5 AND nro_fila = 2;
INSERT INTO gr02_mov_salida VALUES (15, 'Transport srl', 'pq34567lw', 5, 10);
UPDATE gr02_alquiler_posiciones SET estado = false WHERE id_alquiler = 5 AND nro_posicion = 2 AND nro_estanteria = 2 AND nro_fila = 2;
