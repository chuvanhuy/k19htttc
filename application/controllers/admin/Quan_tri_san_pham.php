<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Quan_tri_san_pham extends CI_Controller {
	public function index()
	{
		$this->load->view('admin/v_quan_tri_san_pham');
	}
}