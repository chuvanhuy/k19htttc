<?php 
	class m_tin_tuc extends CI_Model {
        public function lay_tin_tuc_theo_loai_tin($loai_tin_id)
        {
			$query = $this->db->query("
				SELECT *
				FROM tbl_tin_tuc
				WHERE loai_tin_id='".$loai_tin_id."'
			");

            return $query->result();
        }

        public function them_moi_tin_tuc()
        {
        	// Lấy dữ liệu trả về
			$loai_tin_id = '1';
			$tieu_de = $_POST['txtTieuDe'];
			$mo_ta = $_POST['txtMoTa'];
			$noi_dung = $_POST['txtNoiDung'];

			// Chuẩn bị dữ liệu chèn vào bàng trong CSDL
			$data = array(
		        'loai_tin_id' => $loai_tin_id,
		        'tieu_de' => $tieu_de,
		        'mo_ta' => $mo_ta,
		        'noi_dung' => $noi_dung
			);

			// Thực hiện chèn dữ liệu vào bảng TIN TỨC trong CSDL
			$this->db->insert('tbl_tin_tuc', $data);
        }

        public function cap_nhat_tin_tuc()
        {
        	// Từ từ đã
        }

        public function xoa_tin_tuc()
        {
        	// Từ từ đã
        }
	}
;?>