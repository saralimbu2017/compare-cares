
var cancelIcon = document.querySelector(".ui-compare-wrapper");
var canvasRating = document.getElementById("ratingChart").getContext('2d');
var canvasCostChart = document.getElementById("costChart").getContext('2d'); 
var removeComponent = function(event) {

  var components = document.querySelectorAll(".component");
  if(components.length !== 1) {
    event.target.closest('.component').remove();
    var ratingDivs = document.querySelectorAll('.rating');
    var aged_care_costs = document.querySelectorAll('.cost');
    var aged_care_names = document.querySelectorAll('.aged_care_name');
    var names = []
    var dataSet=[]
    var costs=[]
    ratingDivs.forEach(ratingDiv=> dataSet.push(Number(ratingDiv.textContent)))
    aged_care_costs.forEach(aged_care_cost=> costs.push(Number(aged_care_cost.textContent)))
    aged_care_names.forEach(aged_care_name=> names.push(aged_care_name.textContent))
    // var color = Chart.helpers.color;
    // console.log(names);
    
    // console.log(costs);
    dataSet.push(1)
    costs.push(50000)
    console.log(dataSet);
    var barChartData = {
        
      labels: names ,
      datasets: [{
        label: 'Ratings',
        backgroundColor: 'rgb(233, 153, 61)',
        borderWidth: 1,
        data: dataSet
        }]
      }
      var costChartData = {
    
        labels: names ,
        datasets: [{
          label: 'Cost',
          backgroundColor: 'rgb(122, 138, 30)',
          borderWidth: 1,
          data: costs
        }]
      }

   



  var myBarChart = new Chart(canvasRating, {
    type: 'bar',
    data: barChartData,
    options: {
      responsive: true,
      legend: {
        position: 'top',
      },
    title: {
      display: true,
      text: 'Ratings'
      }
    }
});

var myCostBarChart = new Chart(canvasCostChart, {
  type: 'bar',
  data: costChartData,
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
  if(components.length == 2) {
    var removeIcon = document.querySelector(".cancel-icon-span");
    console.log(removeIcon)
    removeIcon.classList.add("hide");
  }
}


var aged_care_costs = document.querySelectorAll('.cost');
var ratingDivs = document.querySelectorAll('.rating');
var aged_care_names = document.querySelectorAll('.aged_care_name');
var names = []
var ratings=[]
var costs=[]
aged_care_costs.forEach(aged_care_cost=> costs.push(Number(aged_care_cost.textContent)))
ratingDivs.forEach(ratingDiv=> ratings.push(Number(ratingDiv.textContent)))
console.log(ratings);
aged_care_names.forEach(aged_care_name=> names.push(aged_care_name.textContent))
// var color = Chart.helpers.color;
ratings.push(1)
costs.push(100000)
  var costChartData = {
    
    labels: names ,
    datasets: [{
      label: 'Cost',
      backgroundColor: 'rgb(122, 138, 30)',
      borderWidth: 1,
      data:  costs
    }]
  }
  var myCostBarChart = new Chart(canvasCostChart, {
    type: 'bar',
    data: costChartData,
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

var barChartData = {
        
  labels: names ,
  datasets: [{
    label: 'Ratings',
    backgroundColor: 'rgb(233, 153, 61)',
    borderWidth: 1,
    data: ratings
    }]
  }


var myBarChart = new Chart(canvasRating, {
  type: 'bar',
  data: barChartData,
  options: {
    responsive: true,
    legend: {
      position: 'top',
    },
  title: {
    display: true,
    text: 'Ratings'
    }
  }
});


  
   
 
cancelIcon.addEventListener('click',removeComponent)

