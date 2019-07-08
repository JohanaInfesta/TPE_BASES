'use strict';

function navigatePost(url, data = {}) {
  if(url.indexOf('posicionesLibres') != -1){
    data.fecha = document.querySelector('#fecha').value;
    if(data.fecha == ""){
      alert("Seleccione una fecha.");
    }else{
        $.post(url, data, function (res) {
          $('.main-content').html(res);
        });
    }
  }else{
    $.post(url, data, function (res) {
      $('.main-content').html(res);
      console.log(url, data);
    });
  }
}
