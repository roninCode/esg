function drawChart() {

  var data = google.visualization.arrayToDataTable([
    ['Investment Type', 'Weight'],
    [' DFA Emerging Markets Social Core Equity Portfolio', .03],
    ['DFA US Sustainability Core 1 Portfolio', .06],
    ['DFA International Sustainability Core 1 Portfolio', .05],
    ['DFA Social Fixed Income Portfolio', .08],
    ['DFA US Social Core Equity 2 Portfolio', .01],
    ['Global X Concious Companies ETF', .02],
    ['VanEck Green Bond ETF', .04],
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
    [' DFA Emerging Markets Social Core Equity Portfolio', .03],
    ['DFA US Sustainability Core 1 Portfolio', .06],
    ['DFA International Sustainability Core 1 Portfolio', .05],
    ['DFA Social Fixed Income Portfolio', .08],
    ['DFA US Social Core Equity 2 Portfolio', .01],
    ['Global X Concious Companies ETF', .02],
    ['VanEck Green Bond ETF', .04],
    ['DFA International Social Core Equity Portfolio', .02]
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
    [' DFA Emerging Markets Social Core Equity Portfolio', .03],
    ['DFA US Sustainability Core 1 Portfolio', .06],
    ['DFA International Sustainability Core 1 Portfolio', .05],
    ['DFA Social Fixed Income Portfolio', .08],
    ['DFA US Social Core Equity 2 Portfolio', .01],
    ['Global X Concious Companies ETF', .02],
    ['VanEck Green Bond ETF', .04],
    ['DFA International Social Core Equity Portfolio', .02]
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
    [' DFA Emerging Markets Social Core Equity Portfolio', .03],
    ['DFA US Sustainability Core 1 Portfolio', .06],
    ['DFA International Sustainability Core 1 Portfolio', .05],
    ['DFA Social Fixed Income Portfolio', .08],
    ['DFA US Social Core Equity 2 Portfolio', .01],
    ['Global X Concious Companies ETF', .02],
    ['VanEck Green Bond ETF', .04],
    ['DFA International Social Core Equity Portfolio', .02]
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
    [' DFA Emerging Markets Social Core Equity Portfolio', .03],
    ['DFA US Sustainability Core 1 Portfolio', .06],
    ['DFA International Sustainability Core 1 Portfolio', .05],
    ['DFA Social Fixed Income Portfolio', .08],
    ['DFA US Social Core Equity 2 Portfolio', .01],
    ['Global X Concious Companies ETF', .02],
    ['VanEck Green Bond ETF', .04],
    ['DFA International Social Core Equity Portfolio', .02]
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
  if (window.location.href === "http://localhost:3000/risk_models#") {
    google.charts.setOnLoadCallback(drawChart);
    google.charts.setOnLoadCallback(drawChart1);
    google.charts.setOnLoadCallback(drawChart2);
    google.charts.setOnLoadCallback(drawChart3);
    google.charts.setOnLoadCallback(drawChart4);
  } 
  else if (window.location.href === "http://localhost:3000/risk_models/1#") { 
    google.charts.setOnLoadCallback(drawChart);
  }
  else if (window.location.href === "http://localhost:3000/risk_models/2#") {
    google.charts.setOnLoadCallback(drawChart1);
  }
  else if (window.location.href === "http://localhost:3000/risk_models/3#") {
    google.charts.setOnLoadCallback(drawChart2);
  }
  else if (window.location.href === "http://localhost:3000/risk_models/4#") {
    google.charts.setOnLoadCallback(drawChart3);
  }
  else if (window.location.href === "http://localhost:3000/risk_models/5#") {
    google.charts.setOnLoadCallback(drawChart4);  
  }
});