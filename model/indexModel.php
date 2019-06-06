<?php

class indexModel extends Model
{
  function getAlquiler(){
    $sentencia = $this->db->prepare("SELECT nro_posicion, nro_fila FROM unc_248998.g02_alquiler_posiciones");
    $sentencia->execute();
    return $sentencia->fetchAll(PDO::FETCH_ASSOC);

  }
  // function getAlquiler($fecha){
  //   $sentencia = $this->db->prepare("SELECT nro_estanteria, nro_fila, nro_posicion, pos_global, tipo
  //                                     FROM unc_248998.fn_g02_listado_posiciones_libres('$fecha');");
  //   $sentencia->execute();
  //   return $sentencia->fetchAll();
  //
  // }
  function getCliente($cuit_cuil){
    $sentence  = $this->db->prepare( "SELECT id_alquiler, nro_estanteria, nro_fila, nro_posicion, estado,
                                    fecha_desde, fecha_hasta
                                      FROM unc_248998.fn_g02_listado_posiciones_vacias_para_clienteX($cuit_cuil);");
    $sentence->execute();
    return $sentence->fetchAll();
  }
  function getClientes(){
    $sentence = $this->db->prepare( "SELECT cuit_cuil, apellido, nombre
                                      FROM unc_248998.fn_g02_listado_clientes()");
    $sentence->execute();
    return $sentence->fetchAll(PDO::FETCH_ASSOC);
  }
}
?>
