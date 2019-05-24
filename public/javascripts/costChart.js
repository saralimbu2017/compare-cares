
		window.onload = function() {
      var ctx = document.getElementById("costChart").getContext('2d');
      var aged_care_costs = document.querySelectorAll('.cost');
      var aged_care_names = document.querySelectorAll('.aged_care_name');
      var names = []
      var costs=[]
      aged_care_costs.forEach(aged_care_cost=> costs.push(Number(aged_care_cost.textContent)))
      aged_care_names.forEach(aged_care_name=> names.push(aged_care_name.textContent))
      var color = Chart.helpers.color;

      console.log("hello");
      var barChartData = {
      
        labels: names ,
        datasets: [{
          label: 'Cost',
          backgroundColor: 'rgb(111, 128, 17)',
          borderWidth: 1,
          data: costs
        }]
      }


      var myBarChart = new Chart(ctx, {
        type: 'bar',
        data: barChartData,
        options: {
          responsive: true,
          legend: {
            position: 'top',
          },
        title: {
          display: true,
          text: 'Cost'
        }
      }
});

}