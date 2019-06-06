<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <title>Trabajo Bases</title>
</head>
<body>

<div class="">
    <div class="dropdown show">
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
<div class="">
  <div class="">
    <!-- <form enctype="multipart/form-data" method="get" onsubmit="saveBook(this, event)"> -->
      <label for="fecha"></label>
      <input type="date" name="fecha" value="" id="fecha">
      <button type="button" onclick="navigatePost('http://localhost/tpe-bases/posicionesLibres')">Buscar</button>
    <!-- </form> -->
  </div>
</div>
  <div class="main-content">

  </div>


  <script type="text/javascript" src="js/script.js"></script>
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
