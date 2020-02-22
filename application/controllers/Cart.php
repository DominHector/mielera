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

        if($this->session->userdata('user')){
            if(isset($_POST)){
                $sale_record = false;
                foreach ($products_data as $product) {
                    foreach($_POST as $key => $quantity) {
                        if($product['ml_product_id'] == $key && $quantity > 0) {
                            $user = $this->session->userdata('user');
                            $product_id =  $product['ml_product_id'];
                            $product_name = $product['ml_product_name'];
                            $product_price = $product['ml_product_price'];
                            $product_img = $product['ml_product_img'];
                            $product_description = $product['ml_product_description'];
                            $sale_record = $this->Products_model->set_purchase_products_data($user, $product_id, $product_name, $product_price, $quantity, 'selling', $product_img, $product_description);
                            if($sale_record == false) {
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
