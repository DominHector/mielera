<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cart extends CI_Controller {

	public function index()
	{
        $this->smarty->display('head.tpl');

        $this->load->model('Pages_model');
        $menu_options = $this->Pages_model->get_menu_options();
        $this->smarty->assign('menu_options', menu_session_options($menu_options));

        $this->smarty->assign('brand_url', base_url() . "assets/img/components/com-navbar/brand.svg");

        $this->load->model('Products_model');
        $products_data = $this->Products_model->get_products_data();
        $this->smarty->assign('PRODUCTS', $products_data);

        $this->smarty->display('pages/cart.tpl');
    }
}
