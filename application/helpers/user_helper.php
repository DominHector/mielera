<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

if (!function_exists('menu_session_options')){
    function menu_session_options(array $options) {

        if(!empty($options)) {
            foreach($options as $option) {
                if(!empty($_SESSION['user'])) {
                    if($option['ml_option_logged'] !== 'false') {
                        $result[] = $option;
                    }
                } else {
                    if($option['ml_option_logged'] !== 'true') {
                        $result[] = $option;
                    }
                }
            }
        }

        return $result ?? [];
    }
}