<?php

class indexModel extends Model
{
  function getAlquiler(){
    $sentencia = $this->db->prepare("SELECT nro_posicion, nro_fila FROM unc_248998.g02_alquiler_posiciones");
    $sentencia->execute();
    return $sentencia->fetchAll(PDO::FETCH_ASSOC);
  }

  function getPosicionesLibres($fecha){
    $sentencia = $this->db->prepare("SELECT * FROM unc_248998.fn_g02_listado_posiciones_libres($fecha);");
    $sentencia->execute([$fecha]);
    return $sentencia->fetchAll();
  }

  function getPosicionesCliente($cuit_cuil){
    $sentence  = $this->db->prepare( "SELECT * FROM unc_248998.fn_g02_listado_posiciones_vacias_para_clienteX(?)");
    $sentence->execute([$cuit_cuil]);
    return $sentence->fetchAll(PDO::FETCH_ASSOC);
  }

  function getClientes(){
    $sentence = $this->db->prepare( 'SELECT * FROM unc_248998.g02_cliente');
    $sentence->execute();
    return $sentence->fetchAll(PDO::FETCH_ASSOC);
  }
}
?>
