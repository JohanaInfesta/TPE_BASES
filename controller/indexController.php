<?php
include_once('view/indexView.php');
include_once('model/indexModel.php');

class IndexController{

  protected $view;
  protected $model;

  function __construct()
  {
    $this->view = new indexView();
    // $this->model = new indexModel();
  }
  function index(){
    $this->view->mostrarIndex();
  }
}
?>
