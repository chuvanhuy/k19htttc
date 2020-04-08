<?php 
	class m_loai_tin_tuc extends CI_Model {
        public function lay_danh_sach_loai_tin_tuc()
        {
			$query = $this->db->query("
				SELECT *
				FROM tbl_loai_tin_tuc
			");
			
	        return $query->result();
        }
	}
;?>