<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dang_nhap extends CI_Controller {
	function __construct()
	{
		parent::__construct();

		// Thư viện URL
		$this->load->helper('url');

		// Kết nối đến CSDL
		$this->load->database();

		// Thư viện session
		$this->load->library('session');

		// Kết nối đến MODEL có tên m_nguoi_dung
		$this->load->model('m_nguoi_dung');
	}


	public function index()
	{
		// Hiển thị dữ liệu file View
		$this->load->view('admin/v_header');
		$this->load->view('admin/v_dang_nhap');
	}

	// Mục đích: Kiểm tra thông tin đăng nhập của người dùng có đúng hay không?
	public function kiem_tra_dang_nhap()
	{
		// Lấy ra được thông tin Email, Mật khẩu người dùng nhập vào
		$email = $_POST["txtEmail"];
		$password = $_POST["txtPassword"];

		// Điều hướng người dùng
		if ($this->m_nguoi_dung->dem_so_tai_khoan_trung_khop($email, $password)==1) {
			// Tạo ra 1 phiên làm việc cho người đăng nhập thành công
			$this->session->set_userdata('s_email', $email);


			// Thông báo đăng nhập thành công
			echo "
				<script type='text/javascript'>
					window.alert('Đăng nhập thành công!');
				</script>
			";

			// Chuyển người dùng về trang Đăng nhập hệ thống
			echo "
				<script type='text/javascript'>
					window.location.href = '".base_url()."admin/quan_tri_he_thong.html'
				</script>
			";


			// Chuyển người dùng vào trang Quản trị hệ thống
			// redirect(base_url().'admin/quan_tri_he_thong.html');
		} else {
			// Thông báo đăng nhập không thành công
			echo "
				<script type='text/javascript'>
					window.alert('Đăng nhập không thành công!');
				</script>
			";

			// Chuyển người dùng về trang Đăng nhập hệ thống
			echo "
				<script type='text/javascript'>
					window.location.href = '".base_url()."admin/dang_nhap.html'
				</script>
			";

			// Chuyển người dùng vào trang Đăng nhập hệ thống
			// redirect(base_url().'admin/quan_tri_he_thong.html');
		}
	}

	public function thoat()
	{
		// Xóa phiên đăng nhập của người dùng
		session_destroy();

		// Trỏ người dùng về trang đăng nhập
		redirect(base_url().'admin/dang_nhap.html');
	}
}