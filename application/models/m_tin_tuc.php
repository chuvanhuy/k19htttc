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


        public function lay_tin_tuc_theo_ID($id)
        {
			// Lấy dữ liệu của tin tức đó
			$query = $this->db->query("
				SELECT *
				FROM tbl_tin_tuc
				WHERE id='".$id."'
			");

	       return $query->row();
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
			// Lấy dữ liệu trả về
	    	$id = $_POST['txtID'];
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

			// Thực hiện cập nhật dữ liệu vào bảng TIN TỨC trong CSDL
			$this->db->where('id', $id);
			$this->db->update('tbl_tin_tuc', $data);
        }

        public function xoa_tin_tuc($id)
        {
        	// Thực hiện xóa tin tức
			$this->db->where('id', $id);
			$this->db->delete('tbl_tin_tuc');
        }
	}
;?>