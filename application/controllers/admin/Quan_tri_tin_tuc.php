<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Quan_tri_tin_tuc extends CI_Controller {
	public function index()
	{
		// Kết nối đến CSDL
		$this->load->database();

		// Viết câu lệnh truy vấn SQL
		$query_su_kien = $this->db->query("
			SELECT *
			FROM tbl_tin_tuc
			WHERE loai_tin_id='1'
		");

		$query_cong_nghe = $this->db->query("
			SELECT *
			FROM tbl_tin_tuc
			WHERE loai_tin_id='2'
		");

		// Lấy kết quả truy vấn
		$data['tin_su_kien'] = $query_su_kien->result();
		$data['tin_cong_nghe'] = $query_cong_nghe->result();


		// Hiển thị giao diện phần VIEW
		$this->load->view('admin/v_quan_tri_tin_tuc', $data);
	}
}