<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Quen_mat_khau extends CI_Controller {
	public function index()
	{
		$this->load->view('admin/v_quen_mat_khau');
	}
}