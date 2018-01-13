fetch("/essays.json").then(res => res.json()).then(essayData => {

  console.log(essayData);

  // get the canvas with id myChart off the page and store it in the variable myChart
  var myChartCanvas = document.getElementById("myChart").getContext('2d');


  data = {
    labels: ["zero", "one", "two"],
    datasets: [{
      label: "My first dataset",
      data: [{
        x: 10,
        y: 20
      }, {
        x: 15,
        y: 10
      }]
    }]
  }

  var myLineChart = new Chart(myChartCanvas, {
    type: 'line',
    data: data,
    options: {
      responsive: true,
      title: {
        display: true,
        text: "My first line chart"
      },
      scales: {
        xAxes: [{
          display: true,
          scalelabel: {
            display: true,
            labelString: "Time"
          }
        }],
        yAxes: [{
          display: true,
          scalelabel: {
            display: true,
            labelString: "Value"
          }
        }]
      }
    }
  });
})