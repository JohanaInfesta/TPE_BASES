<?php
include_once 'libs/Smarty.class.php';

class indexView {

  function __construct(){
    $this->smarty = new smarty;
  }
  function mostrarIndex(){
    $this->smarty->display('templates/index.tpl');
  }
}

?>
