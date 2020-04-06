<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Quan_tri_phan_hoi extends CI_Controller {
	public function index()
	{
		$this->load->view('admin/v_quan_tri_phan_hoi');
	}
}