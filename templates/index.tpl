<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" href="css/style.css">
  <title></title>
</head>
<body>
  <div class="">
    <form class="" action="" method="get">
      <label for="fecha"></label>
      <input type="date" name="fecha" value="" class="input_fecha" >
      <button type="button" name="button" class="btn_libre" >buscar</button>
    </form>
    <div class="pos_libre">
      <table>
        <thead>
          <tr>
            <th>N° Estanteria</th>
            <th>N° fila</th>
            <th>N° Posicion</th>
            <th>Posicion Global</th>
            <th>Tipo</th>
          </tr>
        </thead>
        <tbody>
          {foreach from=$alquileres item=alquiler}
          <tr>
            <td>{$alquiler['nro_estanteria']}</td>
            <td>{$alquiler['nro_fila']}</td>
            <td>{$alquiler['nro_posicion']}</td>
            <td>{$alquiler['pos_global']}</td>
            <td>{$alquiler['tipo']}</td>
          </tr>
          {/foreach}
        </tbody>
      </table>
    </div>
  </div>
  <script type="text/javascript" src="js/script.js"></script>
  <script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
</body>
</html>
