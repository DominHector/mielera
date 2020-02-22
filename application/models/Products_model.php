<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Products_model extends CI_Model {
    function __construct() {
        parent::__construct();
            $this->load->database();
    }

    public function get_products_data() {
        $sql = 'SELECT * FROM ml_products';
        $query = $this->db->query($sql, []);
        return $query->result_array() ?? false;
    }

    public function set_purchase_products_data($user, $product_id, $product_name, $product_price, $quantity, $sale, $img, $description) {
        $data = array(
            'ml_purchase_user' => $user,
            'ml_purchase_product_id' => $product_id,
            'ml_purchase_product_name' => $product_name,
            'ml_purchase_product_price' => $product_price,
            'ml_purchase_product_img' => $img,
            'ml_purchase_product_description' => $description,
            'ml_purchase_quantity' => $quantity,
            'ml_purchase_date' => date("Y-m-d H:i:s"),
            'ml_purchase_sale' => $sale
        );

        $query = $this->db->insert('ml_purchases', $data);
        return $query ?? false;
    }

    public function get_purchase_products_data($user) {
        $sql = 'SELECT * FROM ml_purchases WHERE ml_purchase_user = ? ORDER BY ml_purchase_date DESC';
        $query = $this->db->query($sql, [$user]);
        return $query->result_array() ?? false;
    }

}
