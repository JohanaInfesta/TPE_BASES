<div class="container-libres cuerpo-index Libres">
  <div class="pos_libre">
    {if {$posLibres}}
    <table class="table_pos_libre">
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
        <tr>
          <td>{$posLibres['nro_estanteria']}</td>
          <td>{$posLibres['nro_fila']}</td>
          <td>{$posLibres['nro_posicion']}</td>
          <td>{$posLibres['pos_global']}</td>
          <td>{$posLibres['id_alquiler']}</td>
        </tr>
      </tbody>
    </table>
    {else}  <h1>No se encuentra ninguna posicion libre</h1>
    {/if}
  </div>
</div>
</div>
