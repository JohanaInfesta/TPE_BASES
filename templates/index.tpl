<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <link href="https://fonts.googleapis.com/css?family=Arvo|Mountains+of+Christmas&display=swap" rel="stylesheet">
  <title>Trabajo Bases</title>
</head>
<body>
  <div class="container-fluid">
    <div class="header mx-auto p-3">
      <p class="title">Web Admin</p>
      <a class="btn btn-light float-right clean-page" href="http://localhost/tpe-bases/">
        Borrar resultados
      </a>
    </div>
    <div class="row mx-md-n5">
      <div class="col px-md-5">      
        <div class="dropdown show p-3">
          <p class="info">Seleccione un cliente para traer todas sus posiciones libres</p>
          <button class="btn dropdown-toggle" type="button" id="dropdownMenuLink" data-toggle = "dropdown" aria-haspopup="true" aria-expanded ="false">Clientes</button>
          <div class="dropdown-menu" aria-labelledby="dropdownMenuLink" id="cliente">
            {foreach from=$clientes item=cliente}
            <a class="dropdown-item" href="#" onclick="navigatePost('http://localhost/tpe-bases/posicionesCliente', {ldelim}cuit_cuil:{$cliente['cuit_cuil']}{rdelim})">
              {$cliente['cuit_cuil']} {$cliente['nombre']} {$cliente['apellido']}
            </a>
            {/foreach}
          </div>
        </div>
      </div>
      <div class="col px-md-5">
        <div class="date-container p-3">
          <!-- <form enctype="multipart/form-data" method="get" onsubmit="saveBook(this, event)"> -->
            <p class="info">Seleccione una fecha para traer todas las posiciones libres</p>
            <label for="fecha"></label>
            <input type="date" name="fecha" value="" id="fecha">
            <button type="button" onclick="navigatePost('http://localhost/tpe-bases/posicionesLibres',)">Buscar</button>
          <!-- </form> -->
        </div>
      </div>
    </div>
    <div class="main-content mx-auto p-3">

    </div>
  </div>

  <script type="text/javascript" src="js/script.js"></script>
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
