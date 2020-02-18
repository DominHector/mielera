<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cart extends CI_Controller {

	public function index()
	{
        $this->load->model('Products_model');
        $products_data = $this->Products_model->get_products_data();
        $this->smarty->assign('PRODUCTS', $products_data);
        $this->smarty->assign('title', 'title');
        $this->smarty->display('head.tpl');
        $this->smarty->display('pages/cart.tpl');
    }
}
