
// リロードしないとJSが読み込まれないため(document).on('turbolinks:load',を追加
// ロードのタイミングで起動する
$(document).on('turbolinks:load', function() {
  var API_KEY = '1bd64e5613c942c6f1f467bffcd83e42'
    const prefecture = document.getElementById('user_wheather_prefecture').value
    var url = 'http://api.openweathermap.org/data/2.5/forecast?q=' + prefecture + ',jp&units=metric&APPID=' + API_KEY;
    $.ajax({
      url: url,
      dataType: "json",
      type: 'GET',
    })
    .done(function(data) {
      var insertHTML = "";
      var cityName = '<h2>' + data.city.name + '</h2>';
      $('#city-name').html(cityName);

      for (var i = 0; i <= 32; i = i + 8) {
        insertHTML += buildHTML(data, i);
      }
      $('#weather').html(insertHTML);
    })
    .fail(function(data) {
      console.log("失敗しました");
    });

// Javascriptがうまく作動せずjQueryにてスクロールで変更した際に天気予報が起動するように
// スクロールを変更した際に起動する
  $('#user_wheather_prefecture').change(function(){
    var API_KEY = '1bd64e5613c942c6f1f467bffcd83e42'
    const prefecture = document.getElementById('user_wheather_prefecture').value
    var url = 'http://api.openweathermap.org/data/2.5/forecast?q=' + prefecture + ',jp&units=metric&APPID=' + API_KEY;
    $.ajax({
      url: url,
      dataType: "json",
      type: 'GET',
    })
    .done(function(data) {
      var insertHTML = "";
      var cityName = '<h2>' + data.city.name + '</h2>';
      $('#city-name').html(cityName);

      for (var i = 0; i <= 32; i = i + 8) {
        insertHTML += buildHTML(data, i);
      }
      $('#weather').html(insertHTML);
    })
    .fail(function(data) {
      console.log("失敗しました");
    });
  });
});


// 以下、日本語化
  function buildHTML(data, i) {
    var Week = new Array('(日)', '(月)', '(火)', '(水)', '(木)', '(金)', '(土)');
    var date = new Date(data.list[i].dt_txt);
    date.setHours(date.getHours() + 9);
    var month = date.getMonth() + 1;
    var day = month + '/' + date.getDate() + Week[date.getDay()];
    var icon = data.list[i].weather[0].icon;
    var html =
      '<div class="weather-report">' +
        '<img src="https://openweathermap.org/img/w/' + icon + '.png">' +
        '<span class="weather-date">' + day + "</span>" +
        '<div class="weather-temp-max">' + '最高：' + Math.round(data.list[i].main.temp_max) + "℃</div>" +
        '<span class="weather-temp-min">' + '最低：' + Math.floor(data.list[i].main.temp_min) + "℃</span>" +
      '</div>';
    return html
  }


