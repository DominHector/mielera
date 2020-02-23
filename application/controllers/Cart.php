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
        $this->smarty->assign('PRODUCTS', $products_data ?? []);

        $user = $this->session->userdata('user') ?? false;

        if(!empty($user)){
            if(isset($_POST) && !empty($products_data)){
                $sale_record = false;
                foreach ($products_data as $product) {
                    foreach($_POST as $product_id => $quantity) {
                        if($product['ml_product_id'] == $product_id && $quantity > 0) {

                            $purchase_data = array(
                                'product_id' => $product['ml_product_id'],
                                'product_name' => $product['ml_product_name'],
                                'product_price' => $product['ml_product_price'],
                                'product_img' => $product['ml_product_img'],
                                'product_description' => $product['ml_product_description']
                            );
                            
                            $sale_record = $this->Products_model->set_purchase_products_data($user, $purchase_data, $quantity, 'selling');

                            if(!$sale_record) {
                                redirect('error-purchase');
                            }
                        }
                    }
                }
                if($sale_record) {
                    redirect('paypal');
                }
            }
        }else{
            redirect('login');
        }

        $this->smarty->display('pages/cart.tpl');
    }
}
