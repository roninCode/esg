$(document).ready(function()
  {function r(r,o)
  {return Math.floor(Math.random()*(o-r+1))+r}var o=
{labels:["Red","Blue","Yellow"],datasets:[
{data:[305
  0,50,100],backgroundColor:["#FF6384","#36A2EB","#FFCE56"],hoverBackgroundColor:["#FF6384","#36A2EB","#FFCE56"]}]},a=
{},e=document.getElementById("myChart1"),t=(new Chart(e,
  {type:"pie",data:o,options:a}),document.getElementById("myChart2")),n=(new Chart(t,
{type:"doughnut",data:o,options:a}),
{labels:["Red","Blue","Yellow"],datasets:[
{data:function(o,a,e)
  {result=[],o=void 0!==o?o:5,a=void 0!==a?a:0,e=void 0!==e?e:10;for(var t=0;t<o;t++)result.push(r(a,e));return result}(5,0,100),backgroundColor:["#FF6384","#36A2EB","#FFCE56","#9c27b0","#4caf51"],hoverBackgroundColor:["#FF6384","#36A2EB","#FFCE56","#9c27b0","#4caf51"]}]}),d=
{legend:
  {display:!1}},l=document.getElementById("myChart3"),y=(new Chart(l,
  {type:"pie",data:n,options:d}),document.getElementById("myChart4")),C=(new Chart(y,
{type:"doughnut",data:n,options:d}),
{datasets:[
  {data:[11,16,7,3,14],backgroundColor:["#FF6384","#4BC0C0","#FFCE56","#9c27b0","#36A2EB"],label:"My dataset"}],labels:["Red","Green","Yellow","Grey","Blue"]}),g=document.getElementById("myChart5"),u=(new Chart(g,
  {type:"polarArea",data:C,options:
{}}),
{datasets:[
  {label:"First Dataset",data:[
{x:r(0,20),y:r(0,40),r:r(5,20)},
{x:r(0,20),y:r(0,40),r:r(5,20)},
{x:r(0,20),y:r(0,40),r:r(5,20)},
{x:r(0,20),y:r(0,40),r:r(5,20)},
{x:r(0,20),y:r(0,40),r:r(5,20)},
{x:r(0,20),y:r(0,40),r:r(5,20)},
{x:r(0,20),y:r(0,40),r:r(5,20)},
{x:r(0,20),y:r(0,40),r:r(5,20)},
{x:r(0,20),y:r(0,40),r:r(5,20)},
{x:r(0,20),y:r(0,40),r:r(5,20)},
{x:r(0,20),y:r(0,40),r:r(5,20)},
{x:r(0,20),y:r(0,40),r:r(5,20)},
{x:r(0,20),y:r(0,40),r:r(5,20)},
{x:r(0,20),y:r(0,40),r:r(5,20)},
{x:r(0,20),y:r(0,40),r:r(5,20)},
{x:r(0,20),y:r(0,40),r:r(5,20)},
{x:r(0,20),y:r(0,40),r:r(5,20)},
{x:r(0,20),y:r(0,40),r:r(5,20)},
{x:r(0,20),y:r(0,40),r:r(5,20)},
{x:r(0,20),y:r(0,40),r:r(5,20)},
{x:r(0,20),y:r(0,40),r:r(5,20)},
{x:r(0,20),y:r(0,40),r:r(5,20)},
{x:r(0,20),y:r(0,40),r:r(5,20)},
{x:r(0,20),y:r(0,40),r:r(5,20)},
{x:r(0,20),y:r(0,40),r:r(5,20)}],backgroundColor:"#FF6384",hoverBackgroundColor:"#FF6384"}]}),i=document.getElementById("myChart6"),b=(new Chart(i,
  {type:"bubble",data:u,options:
{}}),
{labels:["Eating","Drinking","Sleeping","Designing","Coding","Cycling","Running"],datasets:[
{label:"User 1",backgroundColor:"rgba(79,181,198,0.2)",borderColor:"rgba(79,181,198,1)",pointBackgroundColor:"rgba(79,181,198,1)",pointBorderColor:"#fff",pointHoverBackgroundColor:"#fff",pointHoverBorderColor:"rgba(79,181,198,1)",data:[65,59,90,81,56,55,40]},
{label:"User 2",backgroundColor:"rgba(255,99,132,0.2)",borderColor:"rgba(255,99,132,1)",pointBackgroundColor:"rgba(255,99,132,1)",pointBorderColor:"#fff",pointHoverBackgroundColor:"#fff",pointHoverBorderColor:"rgba(255,99,132,1)",data:[28,48,40,19,96,27,100]},
{label:"User 3",backgroundColor:"rgba(100,150,0,0.2)",borderColor:"rgba(100,150,0,1)",pointBackgroundColor:"rgba(100,150,0,1)",pointBorderColor:"#fff",pointHoverBackgroundColor:"#fff",pointHoverBorderColor:"rgba(100,150,132,1)",data:[r(0,100),r(0,100),r(0,100),r(0,100),r(0,100),r(0,100),r(0,100)]}]}),c=document.getElementById("myChart7");new Chart(c,
{type:"radar",data:b,options:
{}})});