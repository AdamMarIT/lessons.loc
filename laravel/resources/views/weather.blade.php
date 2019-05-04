@extends('layouts.app')

@section('content')

    <main role="main"  class="inner cover h-100" style="background:radial-gradient(circle closest-side at center, #fff, #A0C8FE)">
        <div class="container"><a class="p-2 text-dark" href="/home">HOME</a></div>
        <div class="container">
            <div class="text-center">
                <h5>{{ $weather['fixed_weather'] }}</h5>
                <h3>{{ $weather['cityname'] }}</h3>
                <h1>{{ $weather['temperature'] }}</h1>
                <h5>{{ $weather['condition'] }}</h5>
            </div>
            <div class="text-center">
                <img src="{{  $weather['icon_src'] }} " class="img-thumbnail" height="100" width="100" >
            </div>
            <div class="text-center">
                <h6>Давление {{ $weather['pressure'] }} &nbsp;Влажность {{ $weather['humidity'] }}</h6>
                <h6>Ветер &nbsp;{{ $weather['wind'] }}</h6>
                <h6>Восход &nbsp;{{ $weather['sunrise'] }}</h6>
                <h6>Закат &nbsp;{{ $weather['sunset'] }}</h6>
            </div>

        </div>
    
    <div style="height: 100px"></div>
    <form name ="" action="/weather" method= "POST" align="center">
            @csrf
            <label>Выберете город:</label>
            <select size="1" name="city" >
            @foreach ($sities as $city)
             <option value = "{{ $city->city_name }}" >{{ $city->city }}</option>
            @endforeach  
            </select>
            <div></div>
            <input type="submit" name="submit" value="Узнать погоду">
        </form>
        <div style="height: 80px"></div>
        </main>
@endsection
