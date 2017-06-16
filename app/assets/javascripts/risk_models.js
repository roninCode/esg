function drawChart() {

  var data = google.visualization.arrayToDataTable([
    ['Investment Type', 'Weight'],
    [' DFA Emerging Markets Social Core Equity Portfolio', .01],
    ['DFA US Sustainability Core 1 Portfolio', .1],
    ['DFA International Sustainability Core 1 Portfolio', .03],
    ['DFA Social Fixed Income Portfolio', .6],
    ['DFA US Social Core Equity 2 Portfolio', .03],
    ['Global X Concious Companies ETF', .01],
    ['VanEck Green Bond ETF', .2],
    ['DFA International Social Core Equity Portfolio', .02]
  ]);

  var options = {
    title: 'Low Risk Model',
    is3D: true
  };

  var chart = new google.visualization.PieChart(document.getElementById('piechart'));

  chart.draw(data, options);
}

function drawChart1() {

  var data = google.visualization.arrayToDataTable([
    ['Investment Type', 'Weight'],
    [' DFA Emerging Markets Social Core Equity Portfolio', .02],
    ['DFA US Sustainability Core 1 Portfolio', .2],
    ['DFA International Sustainability Core 1 Portfolio', .06],
    ['DFA Social Fixed Income Portfolio', .45],
    ['DFA US Social Core Equity 2 Portfolio', .06],
    ['Global X Concious Companies ETF', .02],
    ['VanEck Green Bond ETF', .15],
    ['DFA International Social Core Equity Portfolio', .04]
  ]);

  var options = {
    title: 'Mild Risk Model',
    is3D: true
  };

  var chart = new google.visualization.PieChart(document.getElementById('piechart1'));

  chart.draw(data, options);
}

function drawChart2() {

  var data = google.visualization.arrayToDataTable([
    ['Investment Type', 'Weight'],
    [' DFA Emerging Markets Social Core Equity Portfolio', .05],
    ['DFA US Sustainability Core 1 Portfolio', .26],
    ['DFA International Sustainability Core 1 Portfolio', .14],
    ['DFA Social Fixed Income Portfolio', .3],
    ['DFA US Social Core Equity 2 Portfolio', .05],
    ['Global X Concious Companies ETF', .05],
    ['VanEck Green Bond ETF', .1],
    ['DFA International Social Core Equity Portfolio', .05]
  ]);

  var options = {
    title: 'Moderate Risk Model',
    is3D: true
  };

  var chart = new google.visualization.PieChart(document.getElementById('piechart2'));

  chart.draw(data, options);
}

function drawChart3() {

  var data = google.visualization.arrayToDataTable([
    ['Investment Type', 'Weight'],
    [' DFA Emerging Markets Social Core Equity Portfolio', .07],
    ['DFA US Sustainability Core 1 Portfolio', .3],
    ['DFA International Sustainability Core 1 Portfolio', .18],
    ['DFA Social Fixed Income Portfolio', .15],
    ['DFA US Social Core Equity 2 Portfolio', .1],
    ['Global X Concious Companies ETF', .07],
    ['VanEck Green Bond ETF', .05],
    ['DFA International Social Core Equity Portfolio', .08]
  ]);

  var options = {
    title: 'Elevated Risk Model',
    is3D: true
  };

  var chart = new google.visualization.PieChart(document.getElementById('piechart3'));

  chart.draw(data, options);
}

function drawChart4() {

  var data = google.visualization.arrayToDataTable([
    ['Investment Type', 'Weight'],
    [' DFA Emerging Markets Social Core Equity Portfolio', .1],
    ['DFA US Sustainability Core 1 Portfolio', .35],
    ['DFA International Sustainability Core 1 Portfolio', .21],
    ['DFA US Social Core Equity 2 Portfolio', .13],
    ['Global X Concious Companies ETF', .1],
    ['DFA International Social Core Equity Portfolio', .11]
  ]);

  var options = {
    title: 'Highest Risk Model',
    is3D: true
  };

  var chart = new google.visualization.PieChart(document.getElementById('piechart4'));

  chart.draw(data, options);
}

$(document).ready(function(){
  google.charts.load('current', {'packages':['corechart']});
  if (window.location.href === "http://ethicapital.herokuapp.com/risk_models#") {
    google.charts.setOnLoadCallback(drawChart);
    google.charts.setOnLoadCallback(drawChart1);
    google.charts.setOnLoadCallback(drawChart2);
    google.charts.setOnLoadCallback(drawChart3);
    google.charts.setOnLoadCallback(drawChart4);
  } 
  else if (window.location.href === "http://ethicapital.herokuapp.com/risk_models/1#") { 
    google.charts.setOnLoadCallback(drawChart);
  }
  else if (window.location.href === "http://ethicapital.herokuapp.com/risk_models/2#") {
    google.charts.setOnLoadCallback(drawChart1);
  }
  else if (window.location.href === "http://ethicapital.herokuapp.com/risk_models/3#") {
    google.charts.setOnLoadCallback(drawChart2);
  }
  else if (window.location.href === "http://ethicapital.herokuapp.com/risk_models/4#") {
    google.charts.setOnLoadCallback(drawChart3);
  }
  else if (window.location.href === "http://ethicapital.herokuapp.com/risk_models/5#") {
    google.charts.setOnLoadCallback(drawChart4);  
  }
});