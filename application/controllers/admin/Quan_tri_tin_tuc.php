<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Quan_tri_tin_tuc extends CI_Controller {
	public function index()
	{
		// Kết nối đến CSDL
		$this->load->database();

		// Kết nối đến MODEL có tên m_tin_tuc
		$this->load->model('m_tin_tuc');

		// Lấy kết quả truy vấn
		$data['tin_su_kien'] = $this->m_tin_tuc->lay_tin_tuc_theo_loai_tin(1);
		$data['tin_cong_nghe'] = $this->m_tin_tuc->lay_tin_tuc_theo_loai_tin(2);

		// Hiển thị giao diện phần VIEW
		$this->load->view('admin/v_quan_tri_tin_tuc', $data);
	}

	public function them_moi_tin_tuc() {
		// Thư viện URL
		$this->load->helper('url');

		// Mục đích: hiển thị ra form để các bạn nhập dữ liệu
		$this->load->view('admin/v_tin_tuc_them_moi');
	}

	public function thuc_hien_them_moi_tin_tuc() {
		// Thư viện URL
		$this->load->helper('url');

		// Kết nối đến CSDL
		$this->load->database();

		// Kết nối đến MODEL có tên m_tin_tuc
		$this->load->model('m_tin_tuc');

		// Thực hiện thêm mới tin tức
		$this->m_tin_tuc->them_moi_tin_tuc();

		// Quay trở về trang Quản trị tin tức
		redirect(base_url().'admin/quan_tri_tin_tuc.html');
	}
}