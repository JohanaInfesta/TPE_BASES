<div class="container-cliente cuerpo-index cliente" >
  <div class="pos_cliente">
    <!-- <div id="{$cliente['cuit_cuil']}"> -->
      {if {$posiciones}}
      <table class="table_pos_cliente">
        <thead>
          <tr>
            <th>ID alquiler</th>
            <th>N° estanteria</th>
            <th>N° fila</th>
            <th>N° posicion</th>
            <th>Estado</th>
            <th>Fecha Inicio</th>
            <th>Fecha Fin</th>
          </tr>
        </thead>
        <tbody>
          {foreach from=$posiciones item = posicion }
          <tr>
            <td>{$posicion['id_alquiler']}</td>
            <td>{$posicion['nro_estanteria']}</td>
            <td>{$posicion['nro_fila']}</td>
            <td>{$posicion['nro_posicion']}</td>
            <td>FALSO</td>
            <td>{$posicion['fecha_desde']}</td>
            <td>{$posicion['fecha_hasta']}</td>
          </tr>
          {/foreach}
        </tbody>
      </table>
      {else} <h1>No se encontraron posiciones libres de este cliente</h1>
      {/if}
    <!-- </div> -->
  </div>
</div>
