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
}
?>
