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

}
