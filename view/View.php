<?php

include_once 'libs/Smarty.class.php';

class View
{
  protected $smarty;

  function __construct()
  {
    $this->smarty = new Smarty();
    $this->smarty->assign('titulo', 'Trabajo bases');
  }
  function mostrarIndex($clientes){
    $this->smarty->assign('clientes', $clientes);
    $this->smarty->display('templates/index.tpl');
    }
    function mostrarPosicionesCliente($posiciones){
      $this->smarty->assign('posiciones', $posiciones);
      $this->smarty->display('templates/posicionesCliente.tpl');
    }
}
 ?>
