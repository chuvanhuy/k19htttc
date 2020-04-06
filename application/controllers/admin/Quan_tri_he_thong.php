<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Quan_tri_he_thong extends CI_Controller {
	public function index()
	{
		$this->load->view('admin/v_quan_tri_he_thong');
	}
}