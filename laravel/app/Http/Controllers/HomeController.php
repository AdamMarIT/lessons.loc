<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $client = new \GuzzleHttp\Client();
        $apiKey = env('WEATHER_API_KEY');
        $response = $client->request('GET', "https://api.openweathermap.org/data/2.5/weather?q=Kremenchuk&units=metric&APPID=$apiKey");
        $body = $response->getBody(); //получаем объект
        $content = $body->getContents(); //получаем строку в json
        $weather=json_decode($content); 
        $temperature = $weather->main->temp."°C";
        $icon=$weather->weather[0]->icon.".png";
        //$weatherNow = "<img src='http://openweathermap.org/img/w/" . $icon ."'> ".$temperature;
    

  /*      $client = new \GuzzleHttp\Client();
        $response = $client->request('GET', "https://api.privatbank.ua/p24api/pubinfo?json&exchange&coursid=5");
        $body = $response->getBody(); //получаем объект
        $content = $body->getContents(); //получаем строку в json
        $rates=json_decode($content); 
        $usd_now = $rates[0]->sale;
        $usd = number_format($usd_now, 2, '.', '');
*/
         return view('home')->with('icon', $icon)->with('temperature', $temperature); //->with('usd', $usd);
    }
}
