<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function index()
	{
        $this->output->delete_cache();
        $this->load->model('Products_model');
        $products_data = $this->Products_model->get_products_data();
        $this->smarty->assign('PRODUCTS', $products_data);
        $this->smarty->assign('title', 'title');
        $this->smarty->display('head.tpl');
        $this->smarty->display('pages/home.tpl');
    }
}
