<?php

class Model{

  protected $db;

  function __construct()
  {
    $this->db = new PDO ("pgsql:host=dbases.exa.unicen.edu.ar; port=6432; dbname=cursada; user=unc_249166 password=38006317");
  }

}

?>
