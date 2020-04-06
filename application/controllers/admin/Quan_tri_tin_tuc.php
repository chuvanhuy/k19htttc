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

	// Mục đích: Hiển thị form trống để nhập thông tin
	public function them_moi_tin_tuc() {
		// Thư viện URL
		$this->load->helper('url');

		// Mục đích: hiển thị ra form để các bạn nhập dữ liệu
		$this->load->view('admin/v_tin_tuc_them_moi');
	}

	// Mục đích: thêm mới tin tức vào CSDL
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

	// Mục đích: Chuẩn bị dữ liệu để sửa, hiển thị dữ liệu này trên FORM
	public function sua() {
		// Thư viện URL
		$this->load->helper('url');

		// Kết nối đến CSDL
		$this->load->database();

		// Lấy ID của tin tức mà cần sửa
		$id = $this->uri->segment(4);

		// Kết nối đến MODEL có tên m_tin_tuc
		$this->load->model('m_tin_tuc');

		// Lấy dữ liệu từ MODEL
		 $data['tin_tuc'] = $this->m_tin_tuc->lay_tin_tuc_theo_ID($id);

		// Đẩy dữ liệu tin tức đó ra form để các bạn cập nhật
		$this->load->view('admin/v_tin_tuc_sua', $data);
	}

	// Mục đích: thực hiện cập nhật dữ liệu vào CSDL
	public function thuc_hien_sua() {
		// Thư viện URL
		$this->load->helper('url');

		// Kết nối đến CSDL
		$this->load->database();

		// Kết nối đến MODEL có tên m_tin_tuc
		$this->load->model('m_tin_tuc');

		// Thực hiện sửa tin tức
    	$this->m_tin_tuc->cap_nhat_tin_tuc();

		// Quay trở về trang Quản trị tin tức
		redirect(base_url().'admin/quan_tri_tin_tuc.html');
	}

	// Mục đích: thực hiện xóa dữ liệu khỏi CSDL MySQL
	public function xoa() {
		// Thư viện URL
		$this->load->helper('url');

		// Kết nối đến CSDL
		$this->load->database();

		// Lấy ID của tin tức mà cần xóa
		$id = $this->uri->segment(4);

		// Kết nối đến MODEL có tên m_tin_tuc
		$this->load->model('m_tin_tuc');

		// Thực hiện xóa tin tức thông qua gọi hàm trong MODEL
		$this->m_tin_tuc->xoa_tin_tuc($id);

		// Quay trở về trang Quản trị tin tức
		redirect(base_url().'admin/quan_tri_tin_tuc.html');
	}
}