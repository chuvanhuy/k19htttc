<?php 
	class m_nguoi_dung extends CI_Model {
        public function dem_so_tai_khoan_trung_khop($email, $password)
        {
			// Kiểm tra xem Email và Password thu được có trùng thông tin đã lưu trong CSDL hay không?
			$query = $this->db->query("
				SELECT *
				FROM tbl_nguoi_dung
				WHERE email='".$email."' AND mat_khau='".md5($password)."'
			");

            return $query->num_rows();
        }
	}
;?>