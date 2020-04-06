<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Trang_chu extends CI_Controller {
	public function index()
	{
		$this->load->helper('url');

		echo site_url()."<br/>";
		echo base_url()."<br/>";
		echo current_url()."<br/>";
		echo uri_string()."<br/>";

		$this->load->view('v_trang_chu');
	}
}
