<?php 
	class Mproduk extends CI_Model
	{
		
		function tampil()
		{
			$q = $this->db->get("produk")->result_array();
			$d = $q;
			return $d;
		}

		function produk_member($id_member)
		{
			$this->db->where("id_member", $id_member);
			$q = $this->db->get("produk")->result_array();
			$d = $q;
			return $d;
		}
	}	
