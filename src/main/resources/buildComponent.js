lineButton.onclick = function() {
    var componentTitle  = document.getElementById('componentTitle').value;
    option.title.text = componentTitle;
    var lineChart = new Chart(Cnvs, {
      type: 'line',
      data: petrol_price_years_line,
      options: option
  });
    currentChart = lineChart;
  };

barButton.onclick = function() {
    var componentTitle  = document.getElementById('componentTitle').value;
    option.title.text = componentTitle;
    var barChart = new Chart(Cnvs, {
      type: 'bar',
      data: top_cars_per_capita,
      options: option
    });
    currentChart = barChart;
  };

pieButton.onclick = function() {
    var componentTitle  = document.getElementById('componentTitle').value;
    option.title.text = componentTitle;
    var pieChart = new Chart(Cnvs, {
      type: 'pie',
      data: top_cars_per_capita,
      options: option
    });
    currentChart = pieChart;
  };