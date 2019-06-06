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
    $alquileres = $this->a_model->getAlquiler();
    $this->view->mostrarIndex($alquileres);
  }

  public function getLibres(){
    $fecha = date('yyyy-MM-dd', $_POST['fecha']);
    $this->model->getAlquiler($fecha);
  }
}

?>
