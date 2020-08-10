

$ ("turbolinks:load", function() {
  var API_KEY = '1bd64e5613c942c6f1f467bffcd83e42'
  var city = 'Tokyo';
  var url = 'http://api.openweathermap.org/data/2.5/forecast?q=' + city + ',jp&units=metric&APPID=' + API_KEY;
  $.ajax({
    url: url,
    dataType: "json",
    type: 'GET',
  })
  .done(function(data) {
    var insertHTML = "";
    var cityName = 'Tokyo';
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

// 日本語化
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


