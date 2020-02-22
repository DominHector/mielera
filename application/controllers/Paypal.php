<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Paypal extends CI_Controller {

	public function index()
	{
        $this->smarty->display('head.tpl');

        $this->load->model('Products_model');
        $purchases_data = $this->Products_model->get_purchase_products_data_if_selling($this->session->userdata('user'));

        $purchases_id = [];
        $purchases_name = [];
        $purchases_total_price = [];

        if(!empty($purchases_data)){
            foreach($purchases_data as $purchase_data) {
                $purchases_id[] = $purchase_data['ml_purchase_product_id'];
                $purchases_name[] = $purchase_data['ml_purchase_quantity'];
                $purchases_name[] = $purchase_data['ml_purchase_product_name'];
                $purchases_total_price[] = $purchase_data['ml_purchase_quantity'] * $purchase_data['ml_purchase_product_price'];
            }
        }

        $this->smarty->assign('purchase_ids', $purchases_id);
        $this->smarty->assign('purchases_name', implode( ' ', $purchases_name));
        $this->smarty->assign('purchase_total_prices', array_sum($purchases_total_price));
        $this->smarty->display('pages/paypal.tpl');
    }
}
