<?php

class ConfigApp
{
    public static $ACTION = 'action';
    public static $PARAMS = 'params';
    public static $ACTIONS = [
        ''=> 'Controller#index',
        'posicionesCliente' => 'Controller#getPosicionesCliente',
        'cliente' => 'Controller#getCliente'

    ];

}

 ?>
