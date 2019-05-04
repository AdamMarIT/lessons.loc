<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\CurrentWeather;
use App\City;

class CurrentWeatherController extends Controller
{
    public function index($city = 'Kiev'){
    	if (!empty($_POST['city'])){
    		$city = $_POST['city'];
    	} 
        
    	//$weather = \Artisan::call('weather:get', [ 'city' => $city ]);
    	$owm = new CurrentWeather;
    	$currentWeather = $owm->setCurrentWeather($city);
    	$weather = [];
        $city = $currentWeather['id'];
        //получаем название города на русском
        $citydata = \DB::table('cities')
            ->join('current_weathers', 'cities.id', '=', 'current_weathers.city_id')
            ->where('current_weathers.city_id', '=', $city)
            ->get();
        foreach ($citydata as $city) {
            $cityName = $city->city;
        }

    	$weather['cityname'] = $cityName;
        $weather['temperature'] = $currentWeather['main']['temp']."°C";
        $weather['condition'] = $owm->weatherCondition($currentWeather['weather'][0]['id']);
        $weather['pressure'] = $currentWeather['main']['pressure']." мм рт. ст.";
        $weather['humidity'] = $currentWeather['main']['humidity']." %";
        // ветер и его описание
        $weather['wind'] = $currentWeather['wind']['speed']." м/с (".$owm->windCondition($currentWeather['wind']['speed']).")";
        $weather['icon_src'] = "http://openweathermap.org/img/w/".$currentWeather['weather'][0]['icon'].".png";
        $differenceInTime = 10800;// 3 часа разницы с UA
        $weather['fixed_weather'] = date('Y-m-d H:i', ($currentWeather['dt'] + $differenceInTime));
        $weather['sunrise'] = date('H:i', ($currentWeather['sys']['sunrise'] + $differenceInTime));
        $weather['sunset'] = date('H:i', ($currentWeather['sys']['sunset'] + $differenceInTime));

        //Select для выбора городов
        $sity = new City;
        $sities = $sity->index();

        return view('weather')->with('weather', $weather)->with('sities', $sities);


    }
}
