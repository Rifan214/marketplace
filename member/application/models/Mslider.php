<?php
class Mslider extends CI_Model
{

	function tampil()
	{
		$q = $this->db->get("slider")->result_array();
		$d = $q;
		return $d;
	}

}
