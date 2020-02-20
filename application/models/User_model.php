<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User_model extends CI_Model {
    function __construct() {
        parent::__construct();
            $this->load->database();
    }

    public function get_user_login($user, $pass) {
        $sql = 'SELECT * FROM ml_users 
                WHERE ml_user_name = ?
                AND ml_user_pass = ?';

        $query = $this->db->query($sql, [$user, $pass]);
        return $query->result_array() ?? false;
    }

}
