'use strict';

function navigatePost(url, data = {}) {
  if(url.indexOf('posicionesLibres') != -1){
    data.fecha = document.querySelector('#fecha').value;
    $.post(url, data, function (res) {
      $('.main-content').html(res);
      console.log(url, data);
    });
  }else{
    $.post(url, data, function (res) {
      $('.main-content').html(res);
      console.log(url, data);
    });
  }
}
