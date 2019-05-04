<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class City extends Model
{
    //public $id;
	//public $city;
	public $timestamps = false;

	public function index() {
		$cities = self::all();
		return $cities;
	}

}
