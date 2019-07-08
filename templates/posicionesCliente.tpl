<div class="container container-cliente cuerpo-index cliente" >
  <div class="pos_cliente row justify-content-md-center">
    <!-- <div id="{$cliente['cuit_cuil']}"> -->
      {if {count($posiciones)}!=0}    
    <p class="html">Total:{count($posiciones)}</p>        
      <table class="table table_pos_cliente table-striped">
        <thead>
          <tr>
            <th scope="col">ID alquiler</th>
            <th scope="col">N° estanteria</th>
            <th scope="col">N° fila</th>
            <th scope="col">N° posicion</th>
            <th scope="col">Estado</th>
            <th scope="col">Fecha Inicio</th>
            <th scope="col">Fecha Fin</th>
          </tr>
        </thead>
        <tbody>
          {foreach from=$posiciones item = posicion }
          <tr>
            <th scope="row">{$posicion['id_alquiler']}</th>
            <td>{$posicion['nro_estanteria']}</td>
            <td>{$posicion['nro_fila']}</td>
            <td>{$posicion['nro_posicion']}</td>
            <td>LIBRE</td>
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
