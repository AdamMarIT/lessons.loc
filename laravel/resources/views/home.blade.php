@extends('layouts.app')

@section('content')

<main role="main">
    <div class="container">
      <div> {{ Session::get('message') }}</div>
        <div class="row">
            <div class="col-md-4">
                <p> <a class="p-2 text-muted" href="/weather"> Погода: &nbsp; <img src="http://openweathermap.org/img/w/{{ $icon }}">  {{ $temperature }} &nbsp;&raquo;</a> 
            </div>
            <div class="col-md-4">
                  <p> </p>
                  <p>USD&nbsp;</p> 
            </div>
            <div class="col-md-2">
                <p class="text-right"><b>(067) 540-71-17</b></p>
                <p class="text-right"><b>(050) 540-71-17</b></p>
            </div>
            <div class="col-md-2">
                <p class="text-right"><b>(073) 540-71-17</b></p>
                <p class="text-right"><b>(067) 700-71-17</b></p>
            </div>
        </div>
    </div>
    <div class="nav-scroller py-0 mb-1">
    <div class="container">
      <nav class="nav d-flex justify-content-between">
      <a class="p-2 text-muted" href="#">Главная</a>
      <a class="p-2 text-muted" href="#">Товары</a>
      <a class="p-2 text-muted" href="#">Услуги</a>
      <a class="p-2 text-muted" href="#">Видео</a>
      <a class="p-2 text-muted" href="#">Новости</a>
      <a class="p-2 text-muted" href="#">Сертификаты</a>
      <a class="p-2 text-muted" href="#">Контакты</a>
      </nav>
        

         </div>   
    </div>

  <!-- Main jumbotron for a primary marketing message or call to action -->
  <div class="jumbotron" style="background-image:url(../images/security-camera-or-cctv.jpg);background-position:center;background-repeat:no-repeat;background-size:cover;height: 400px;">
    
    <div class="container">
       
      <h1 class="display-3">SERVICE-ON</h1>
      <p>Работы по проектированию, установке и обслуживанию систем безопасности, </p>
      <p>локальных сетей, спутникового телевиденья, охранных сигнализаций, </p>
      <p>любого уровня сложности для дома, офиса и промышленных объектов</p>
      <p><a class="btn btn-primary btn-lg" href="#" role="button">Learn more &raquo;</a></p>
    
    </div>
  </div>

  <div class="container">
    <!-- Example row of columns -->
    <div class="row">
      <div class="col-md-4">
        <h2>ВИДЕОНАБЛЮДЕНИЕ</h2>
        <p>Теперь не нужно просить соседей присмотреть за домом, когда уезжаете в отпуск или оставляете на детей, говоря: «Только никаких вечеринок!». Вы все увидите собственными глазами! Предлагаем широкий выбор качественных IP камер, HD камер и видеорегистраторов. </p>
        <h6><b><a href="#" role="button">Детальнее &raquo;</a></b></h5>
      </div>
      <div class="col-md-4">
        <h2>КОНТРОЛЬ ДОСТУПА</h2>
        <p>Хотите обеспечить более высокий уровень безопасности на предприятии? </p>
        <p>Предлагаем модули доступа, турникеты и шлагбаумы, контроллеры, считыватели и др.</p>
        <h6><b><a href="#" >Детальнее &raquo;</a></b></h6>
      </div>
      <div class="col-md-4">
        <h2>А ТАКЖЕ:</h2>
        <h5><b><a href="#" role="button">Охранная сигнализация &raquo;</a></b></h5>
        <h5><b><a href="#" role="button">Локальные сети &raquo;</a></b></h5>
        <h5><b><a href="#" role="button">Мини АТС &raquo;</a></b></h5>
        <h5><b><a href="#" role="button">Спутниковое TV &raquo;</a></b></h5>

      </div>
    </div>

    <hr>

  </div> <!-- /container -->

</main>


@endsection
