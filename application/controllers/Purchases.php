<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Purchases extends CI_Controller {

	public function index()
	{
        $this->load->model('Pages_model');
        $menu_options = $this->Pages_model->get_menu_options();
        $this->smarty->assign('menu_options', menu_session_options($menu_options));

        $this->smarty->assign('brand_url', base_url() . "assets/img/components/com-navbar/brand.svg");

        $user = $this->session->userdata('user') ?? false;

        $this->load->model('Products_model');
        $purchases = $this->Products_model->get_purchase_products_data($user);

        if($user){
            foreach ($purchases as &$purchase) {
                $purchase['ml_product_id'] = $purchase['ml_purchase_product_id'] ?? "";
                $purchase['ml_product_img'] = $purchase['ml_purchase_product_img'] ?? "";
                $purchase['ml_product_name'] = $purchase['ml_purchase_product_name'] ?? "";
                $purchase['ml_product_description'] = $purchase['ml_purchase_product_description'] ?? "";
                $purchase['ml_product_price'] = $purchase['ml_purchase_product_price'] ?? "";
            }

            $this->smarty->assign('purchases', $purchases ?? "");

        }else{
            redirect(base_url());
        }

        $this->smarty->display('head.tpl');
        $this->smarty->display('pages/purchases.tpl');
    }
}
