document.addEventListener("DOMContentLoaded", function(){
const mycanvas = document.getElementById('mycanvas');
mycanvas.width = 500;
mycanvas.height = 500;

const ctx = mycanvas.getContext('2d');
ctx.fillStyle = "yellow";
ctx.fillRect(0,0,500,500)

ctx.beginPath();
ctx.arc(75,75,20,0,2 * Math.PI);
ctx.strokeStyle = "green";
ctx.lineWidth = 5;
ctx.stroke();
ctx.fillStyle = "red";
ctx.fill();


});
