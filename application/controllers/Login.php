<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

    public function index()
	{
        $this->smarty->display('head.tpl');
        $this->smarty->assign('brand_url', base_url() . "assets/img/components/com-navbar/brand.svg");
        $this->load->model('Pages_model');

        $menu_options = $this->Pages_model->get_menu_options();
        $this->smarty->assign('menu_options', menu_session_options($menu_options));

        if($this->session->userdata('user')){
            redirect(base_url());
        }
        if(isset($_POST['user']) && isset($_POST['pass'])){
            $this->load->model('User_model');
            $result = $this->User_model->get_user_login($_POST['user'], md5($_POST['pass']));

            if($result) {
                $this->session->set_userdata('user', $_POST['user']);
                redirect(base_url());
            }else{
                redirect('login#bad-pass');
            }
        }
        $this->smarty->display('pages/login.tpl');
    }
}
