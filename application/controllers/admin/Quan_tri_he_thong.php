<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Quan_tri_he_thong extends CI_Controller {
	function __construct()
	{
		parent::__construct();

		// Thư viện URL
		$this->load->helper('url');

		// Kết nối đến CSDL
		$this->load->database();

		// Kết nối đến MODEL có tên m_tin_tuc
		$this->load->model('m_tin_tuc');

		// Thư viện session
		$this->load->library('session');

		// Đẩy người dùng chưa đăng nhập hệ thống ra ngoài
		if ($this->session->userdata('s_email')=="") {
			redirect(base_url().'admin/dang_nhap.html');
		}
	}

	public function index()
	{
		$this->load->view('admin/v_quan_tri_he_thong');
	}
}