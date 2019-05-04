<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CurrentWeather extends Model
{
    protected $fillable = ['city_id', 'temperature', 'condition', 'pressure', 'humidity',
        		          'wind', 'icon', 'fixed_weather', 'sunrise', 'sunset'];
    //public function index($city = 'Kiev') {

    public function setCurrentWeather($city = 'Kiev') {
    	$apiKey = env('WEATHER_API_KEY');
        $url = "https://api.openweathermap.org/data/2.5/weather?q=$city&units=metric&APPID=$apiKey";
        $contents = file_get_contents($url);
        if (empty($contents)){
        	return \Redirect::to('/home')->with('message', 'В даный момент погода недоступна');
        } else {
        	$weather=json_decode($contents, true);
        	
        	self::fill(['city_id' => $weather['id'],
        		          'temperature' => $weather['main']['temp'],
        		          'condition' => $weather['weather'][0]['id'],
        		          'pressure' => $weather['main']['pressure'],
        		          'humidity' => $weather['main']['humidity'],
        		          'wind' => $weather['wind']['speed'],
        		          'icon' => $weather['weather'][0]['icon'],
        		          'fixed_weather' => $weather['dt'],
        		          'sunrise' => $weather['sys']['sunrise'],
                          'sunset' => $weather['sys']['sunset']]);
        	self::save();
        	return $weather;

        }	
    }
    public function windCondition($wind) {
    	switch ($wind) {
                case ($wind <= 0.5): $feature = "штиль";break;
                case ($wind > 0.5 && $wind <= 1.7): $feature = "тихий";break;
                case ($wind > 1.7 && $wind <= 3.3): $feature = "легкий";break;
                case ($wind > 3.3 && $wind <= 5.2): $feature = "слабый";break;
                case ($wind > 5.2 && $wind <= 7.4): $feature = "умереный";break;
                case ($wind > 7.4 && $wind <= 9.8): $feature = "свежий";break;
                case ($wind > 9.8 && $wind <= 12.4): $feature = "сильный";break;
                case ($wind > 12.4 && $wind <= 19.2): $feature = "крепкий";break;
                case ($wind > 19.2 && $wind <= 23.2): $feature = "буря";break;
                case ($wind > 23.2 && $wind <= 30): $feature = "сильная буря";break;
                case ($wind > 30 && $wind <= 35): $feature = "шторм";break;
                case ($wind > 35): $feature = "ураган";break;      
            }
            return $feature;
    }	

    public function weatherCondition($conditionCode) {
    	switch ($conditionCode) {
                case ($conditionCode >= 200 && $conditionCode < 300): $condition = "Гроза";break;
                case ($conditionCode >= 300 && $conditionCode < 400): $condition = "Изморось";break;
                case ($conditionCode >= 500 && $conditionCode < 600): $condition = "Дождь";break;
                case ($conditionCode >= 600 && $conditionCode < 700): $condition = "Снег";break;
                case ($conditionCode == 701): $condition = "Туман";break;
                case ($conditionCode == 800): $condition = "Ясно";break;
                case ($conditionCode > 800 && $conditionCode < 810): $condition = "Облачно";break;
    }	
    return $condition;
    }


        
}
