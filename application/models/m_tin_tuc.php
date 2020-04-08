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
			$loai_tin_id = $_POST['txtLoaiTinTuc'];
			$tieu_de = $_POST['txtTieuDe'];
			$mo_ta = $_POST['txtMoTa'];
			$noi_dung = $_POST['txtNoiDung'];

			// Xử lý đoạn UPLOAD ảnh minh họa
			if (!empty($_FILES['txtAnhMinhHoa']['name'])) {
				$config['upload_path'] = 'assets\images';
				$config['allowed_types'] = 'jpg|jpeg|png|gif';
				$config['file_name'] = $_FILES['txtAnhMinhHoa']['name'];

				$this->load->library('upload', $config);
				$this->upload->initialize($config);

				if ($this->upload->do_upload('txtAnhMinhHoa')) {
					$uploadData = $this->upload->data();
					$data["image"] = $uploadData['file_name'];
				} else{
					$data["image"] = '';
				}
			} else {
				$data["image"] = '';
			}

			// Chuẩn bị dữ liệu chèn vào bàng trong CSDL
			$data = array(
		        'loai_tin_id' => $loai_tin_id,
		        'tieu_de' => $tieu_de,
		        'anh_minh_hoa' => $data["image"],
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
			$loai_tin_id = $_POST['txtLoaiTinTuc'];
			$tieu_de = $_POST['txtTieuDe'];
			$mo_ta = $_POST['txtMoTa'];
			$noi_dung = $_POST['txtNoiDung'];

			// Xử lý đoạn UPLOAD ảnh minh họa
			if (!empty($_FILES['txtAnhMinhHoa']['name'])) {
				$config['upload_path'] = 'assets\images';
				$config['allowed_types'] = 'jpg|jpeg|png|gif';
				$config['file_name'] = $_FILES['txtAnhMinhHoa']['name'];

				$this->load->library('upload', $config);
				$this->upload->initialize($config);

				if ($this->upload->do_upload('txtAnhMinhHoa')) {
					$uploadData = $this->upload->data();
					$data["image"] = $uploadData['file_name'];
				} else{
					$data["image"] = '';
				}
			} else {
				$data["image"] = '';
			}

			// Chuẩn bị dữ liệu chèn vào bàng trong CSDL
			if ($data["image"]=="") {
				$data = array(
			        'loai_tin_id' => $loai_tin_id,
			        'tieu_de' => $tieu_de,
			        'mo_ta' => $mo_ta,
			        'noi_dung' => $noi_dung
				);
			} else {
				$data = array(
		        'loai_tin_id' => $loai_tin_id,
		        'tieu_de' => $tieu_de,
		        'anh_minh_hoa' => $data["image"],
		        'mo_ta' => $mo_ta,
		        'noi_dung' => $noi_dung
				);
			}


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