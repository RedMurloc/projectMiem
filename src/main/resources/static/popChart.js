//var popCanvas = document.getElementById('popChart').getContext("2d");
Chart.defaults.global.maintainAspectRatio = false;
var Cnvs = document.getElementById('Cnvs').getContext('2d');

var currentChart;

var option = {
  animation: {
        duration:5000
    },
    responsive:false,
    maintainAspectRatio: false,
    position: 'center',
    title: {
      display: true,
      text: 'To be determined'
    }
};

var numbers = [1379302771, 1281935911, 326625791, 260580739, 207353391, 204924861, 190632261, 157826578, 142257519, 126451398];
var increasingNums = [1, 2, 3, 4, 5, 6, 7, 8];
var someNums = [228, 359, 123, 321, 832, 232, 120, 333];
var countries = ["China", "India", "United States", "Indonesia", "Brazil", "Pakistan", "Nigeria", "Bangladesh", "Russia", "Japan"];
var mordovia_years = [1959,1970,1979,1987,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,013,2014,2015,2016,2017,2018,2019];
var mordovia_population = [1001994,1029562,990617,964000,964132,963778,962340,960443,960671,958247,954348,949061,942694,935013,927437,918443,908152,888766,886165,876105,866631,856833,847645,840391,833031,834755,833263,825454,818566,812156,808888,807453,808541,805056,795502]


var years_of_cars = [1940,1945,1947,1950,1955,1958,1960,1965,1970,1975,1980,1985,1990];
var trucks = [139.9,69.7,123.4,298.3,337.5,388.9,384.8,415.1,571.8,762.7,872,915.2,779.4];
var passenger_cars = [5.5,5,9.6,64.6,107.8,122.2,138.8,201.2,344.3,1201.2,1327,1332.3,1260.2];

var car_labels = ["Лада","Kia","Hyundai","Renault","Volkswagen","Toyota","Skoda","Nissan","ГАЗ","Ford"];
var car_bought = [360204,227584,178530,137062,113745,108492,81459,80925,60677,53234];

var petrol_years = [2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018];
var petrol_price = [23.49,21.85,23.89,26.92,29.07,31.39,34.02,36.13,36.6,39.74,43.95];

var petrol_producer= ["Kuwait","Brazil","Mexico","United Arab Emirates","Canada","Iran","China","Russia","United States","Saudi Arabia"];
var petrol_amount = [2.75,2.8,2.95,3.23,3.92,4.13,4.19,10.3,10.59,11.75];


var petrol_consumers = ['United States','European Union','China','India','Japan','Saudi Arabia','Russia','Brazil'];
var petrol_consume = [19880000,15000000,13226000,4690000,3988000,3918000,3224000,3017000];

var top_cars_per_capita_countries = ['Сан-Марино','Монако','США','Лихтенштейн','Исландия'];
var top_cars_per_capita_amount = [1263,899,797,773,717];


var backgroundColors = [
        'rgba(255, 99, 132, 0.6)',
        'rgba(54, 162, 235, 0.6)',
        'rgba(255, 206, 86, 0.6)',
        'rgba(75, 192, 192, 0.6)',
        'rgba(153, 102, 255, 0.6)',
        'rgba(255, 159, 64, 0.6)',
        'rgba(255, 99, 132, 0.6)',
        'rgba(54, 162, 235, 0.6)',
        'rgba(255, 206, 86, 0.6)',
        'rgba(75, 192, 192, 0.6)',
        'rgba(153, 102, 255, 0.6)'
      ];

var top_cars_per_capita = {
    labels: top_cars_per_capita_countries,
    datasets: [{
      label: 'Petrol production millions barrels per day',
      data: top_cars_per_capita_amount,
      backgroundColor: backgroundColors
    }]
  }

var petrol_producer_and_amount = {
    labels: petrol_producer,
    datasets: [{
      label: 'Petrol production millions barrels per day',
      data: petrol_amount,
      backgroundColor: backgroundColors
    }]
  }

var petrol_consumers_and_amount = {
    labels: petrol_consumers,
    datasets: [{
      label: 'Petrol consume millions barrels per day',
      data: petrol_consume,
      backgroundColor: backgroundColors
    }]
  }

var petrol_price_years_line = {
    labels: petrol_years,
    datasets: [{
      label: 'Petrol price in Russia',
      data: petrol_price,
      pointBackgroundColor: 'rgba(255,150,0,0.5)'
    }]
  }

var dataClass = {
    labels: countries,
    datasets: [{
      label: 'Population',
      data: numbers,
      backgroundColor: backgroundColors
    }]
  };

var car_bought_2017 = {
    labels: car_labels,
    datasets: [{
      label: 'Cars bougt in Russia at 2017',
      data: car_bought,
      backgroundColor: backgroundColors
    }]
  };

var dataClass2_line = {
    labels: increasingNums,
    datasets: [{
      label: 'Data',
      data: someNums,
      pointBackgroundColor: 'rgba(255,150,0,0.5)'
    }]
  }

var Mordovia_population_line = {
    labels: mordovia_years,
    datasets: [{
      label: 'Mordovia population by years',
      data: mordovia_population,
      pointBackgroundColor: 'rgba(255,150,0,0.5)'
    }]
  }

var Ussr_car_production_line = {
    labels: years_of_cars,
    datasets: [{
      label: 'Trucks production',
      data: trucks,
      pointBackgroundColor: 'rgba(255,150,0,0.5)'
    },
    {
      label: 'Passenger cars production',
      data: passenger_cars,
      pointBackgroundColor: 'rgba(255,150,0,0.5)'
    }]
  }