<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <title>Trabajo Bases</title>
</head>
<body>
  <header class="">
<div class="">
    <div class="dropdown show">
      <button class="btn dropdown-toggle" type="button" id="dropdownMenuLink" data-toggle = "dropdown" aria-haspopup="true" aria-expanded ="false">Clientes</button>
      <div class="dropdown-menu" aria-labelledby="dropdownMenuLink" id="cliente">
        {foreach from=$clientes item=cliente}
        <a class="dropdown-item" href="#" onclick="navigatePost('http://localhost/tpe-bases/cliente', {ldelim}cuit_cuil:{$cliente['cuit_cuil']}{rdelim})">
          {$cliente['cuit_cuil']} {$cliente['nombre']} {$cliente['apellido']}
        </a>
        {/foreach}
      </div>
    </div>
</div>
  </header>
  <div class="main-content">

  </div>


  <script type="text/javascript" src="js/script.js"></script>
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
