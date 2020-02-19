<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

if (!function_exists('menu_session_options')){
    function menu_session_options(array $options) {

        foreach($options as $option) {
            if(!empty($_SESSION['user'])) {
                if($option['ml_option_url'] !== 'login') {
                    $result[] = $option;
                }
            } else {
                if($option['ml_option_url'] !== 'unlogin') {
                    $result[] = $option;
                }
            }
        }

        return $result ?? [];
    }
}