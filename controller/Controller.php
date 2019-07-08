<?php
include_once('view/View.php');
include_once('model/indexModel.php');

class Controller
{
  protected $view;
  protected $model;

  function __construct(){
    $this->view = new View();
    $this->model = new Model();
    $this->a_model = new indexModel();
  }
  public function index()
  {
    $clientes = $this->a_model->getClientes();
    $this->view->mostrarIndex($clientes);
  }

  public function getPosicionesLibres(){
    $fecha =  $_POST['fecha'];
    $posLibres = $this->a_model->getPosicionesLibres($fecha);
    $this->view->mostrarPosicionesLibres($posLibres);
  }
  public function getPosicionesCliente(){
    $cuit_cuil = $_POST['cuit_cuil'];
    $posiciones = $this->a_model->getPosicionesCliente($cuit_cuil);
    $this->view->mostrarPosicionesCliente($posiciones);
  }
}

?>
