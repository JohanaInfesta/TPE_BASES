<div class="container container-libres cuerpo-index Libres">
  <div class="pos_libre row justify-content-md-center">
  <p class="html">Total:{if {$posLibres}}{count($posLibres)}{else} 0{/if}</p>

    {if {$posLibres}}
    <table class="table_pos_libre table table-striped">
      <thead>
        <tr>
          <th scope="col">N° Estanteria</th>
          <th scope="col">N° fila</th>
          <th scope="col">N° Posicion</th>
          <th scope="col">Posicion Global</th>
          <th scope="col">Tipo</th>
        </tr>
      </thead>
      <tbody>
        {foreach from=$posLibres item = pos }      
        <tr>
          <td>{$pos['nro_estanteria']}</td>
          <td>{$pos['nro_fila']}</td>
          <td>{$pos['nro_posicion']}</td>
          <td>{$pos['pos_global']}</td>
          <td>{$pos['tipo']}</td>
        </tr>
        {/foreach}        
      </tbody>
    </table>
    {else}  <h1>No se encuentra ninguna posicion libre</h1>
    {/if}
  </div>
</div>
</div>
