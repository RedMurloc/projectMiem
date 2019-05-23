  component1.onclick = function() {
  	if(!$(this).hasClass('checked')){
  		$('#report').append('<div class="col-lg-4">\
					<div style="height: 300px; margin-top: 40px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); text-align: center; border: 1px solid black;">\
						<canvas id="Cnvs1" width="440" height="300"> \
					</div>');
  		var Cnvs = document.getElementById('Cnvs1').getContext('2d');
		var barChart = new Chart(Cnvs, {
	      type: 'bar',
	      data: top_cars_per_capita,
	      options: option
	    });
	    currentChart = barChart;	
  	}
  	else{
  		$('#Cnvs1').parent().parent().remove();
  	}
  }

    component2.onclick = function() {
  	if(!$(this).hasClass('checked')){
  		$('#report').append('<div class="col-lg-4">\
					<div style="height: 300px; margin-top: 40px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); text-align: center; border: 1px solid black;">\
						<canvas id="Cnvs2" width="440" height="300"> \
					</div>');
  		var Cnvs = document.getElementById('Cnvs2').getContext('2d');
  		var barChart = new Chart(Cnvs, {
	      type: 'bar',
	      data: top_cars_per_capita,
	      options: option
	    });
	    currentChart = barChart;
  	}
  	else{
  		$('#Cnvs2').parent().parent().remove();
  	}
  }

    component3.onclick = function() {
  	if(!$(this).hasClass('checked')){
  		$('#report').append('<div class="col-lg-4">\
					<div style="height: 300px; margin-top: 40px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); text-align: center; border: 1px solid black;">\
						<canvas id="Cnvs3" width="440" height="300"> \
					</div>');
  		var Cnvs = document.getElementById('Cnvs3').getContext('2d');
		var lineChart = new Chart(Cnvs, {
	      type: 'line',
	      data: Mordovia_population_line,
	      options: option
	    });
	    currentChart = lineChart;	
  	}
  	else{
  		$('#Cnvs3').parent().parent().remove();
  	}
  }

    component4.onclick = function() {
  	if(!$(this).hasClass('checked')){
  		$('#report').append('<div class="col-lg-4">\
					<div style="height: 300px; margin-top: 40px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); text-align: center; border: 1px solid black;">\
						<canvas id="Cnvs4" width="440" height="300"> \
					</div>');
  		var Cnvs = document.getElementById('Cnvs4').getContext('2d');
  		var barChart = new Chart(Cnvs, {
	      type: 'bar',
	      data: petrol_consumers_and_amount,
	      options: option
	    });
	    currentChart = barChart;
  	}
  	else{
  		$('#Cnvs4').parent().parent().remove();
  	}
  }

    component5.onclick = function() {
  	if(!$(this).hasClass('checked')){
  		$('#report').append('<div class="col-lg-4">\
					<div style="height: 300px; margin-top: 40px; box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); text-align: center; border: 1px solid black;">\
						<canvas id="Cnvs5" width="440" height="300"> \
					</div>');
  		var Cnvs = document.getElementById('Cnvs5').getContext('2d');
  		var lineChart = new Chart(Cnvs, {
	      type: 'line',
	      data: petrol_price_years_line,
	      options: option
	    });
	    currentChart = lineChart;
  	}
  	else{
  		$('#Cnvs5').parent().parent().remove();
  	}
  }