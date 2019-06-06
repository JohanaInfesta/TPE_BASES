<div class="container-libres posLibres">
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
        {foreach from=$fecha item=alquiler}
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
