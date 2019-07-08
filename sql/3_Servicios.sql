

CREATE FUNCTION  fn_gr02_listado_posiciones_libres(fecha_ingresada DATE)
RETURNS TABLE(
    nro_estanteria INT,
    nro_fila INT,
    nro_posicion INT,
   pos_global INT,
  tipo  VARCHAR
)
AS $$
BEGIN
    RETURN QUERY
        SELECT
         p.nro_estanteria,
         p.nro_fila,
         p.nro_posicion,
         p.pos_global,
         p.tipo
        FROM gr02_posicion p
        LEFT JOIN gr02_alquiler_posiciones ap
          ON p.nro_posicion = ap.nro_posicion 
          AND p.nro_estanteria = ap.nro_estanteria 
          AND p.nro_fila = ap.nro_fila
        LEFT JOIN gr02_alquiler a
          ON a.id_alquiler = ap.id_alquiler
        WHERE (ap.id_alquiler IS NULL OR
              (ap.id_alquiler IS NOT NULL AND
              (fecha_ingresada < a.fecha_desde OR fecha_ingresada > a.fecha_hasta)))
        ORDER BY (
                 p.nro_estanteria,
                 p.nro_fila,
                 p.nro_posicion) ASC;
END; $$
LANGUAGE 'plpgsql';  


CREATE FUNCTION  fn_gr02_listado_posiciones_vacias_para_clienteX(cliente INT)
RETURNS TABLE(
    id_alquiler INT,
    nro_estanteria INT,
    nro_fila INT,
    nro_posicion INT,
    estado BOOLEAN,
    fecha_desde DATE,
    fecha_hasta DATE
)
AS $$
BEGIN
    RETURN QUERY
        SELECT 
          ap.id_alquiler,
          ap.nro_estanteria,
          ap.nro_fila,
          ap.nro_posicion,
          ap.estado,
          a.fecha_desde,
          a.fecha_hasta
        FROM gr02_alquiler_posiciones ap 
        LEFT JOIN gr02_alquiler a
          ON ap.id_alquiler = a.id_alquiler
        LEFT JOIN gr02_cliente c
          ON a.id_cliente = c.cuit_cuil
        WHERE (current_date >= a.fecha_desde AND current_date <= a.fecha_hasta)
          --AND a.id_cliente = cliente
          AND ap.estado = false;
END; $$
LANGUAGE 'plpgsql'; 



CREATE FUNCTION  fn_gr02_listado_clientes()
RETURNS TABLE(
    cuit_cuil INT,
    apellido VARCHAR,
    nombre VARCHAR
)
AS $$
BEGIN
    RETURN QUERY
        SELECT
        c.cuit_cuil,
        c.apellido,
        c.nombre
        FROM gr02_cliente c;
END; $$
LANGUAGE 'plpgsql';


