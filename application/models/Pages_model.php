<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pages_model extends CI_Model {
    function __construct() {
        parent::__construct();
            $this->load->database();
    }

    public function get_menu_options() {
        $sql = 'SELECT * FROM ml_menu_options ORDER BY ml_option_id DESC';
        $query = $this->db->query($sql);
        return $query->result_array() ?? false;
    }

}
