document.addEventListener("DOMContentLoaded", function(){
    const canvas = document.getElementById("mycanvas");
    canvas.height = 500;
    canvas.width = 500;

    const ctx = canvas.getContext("2d");

    ctx.fillStyle = 'lightblue';

    ctx.fillRect(0,0,500,500);

    ctx.beginPath();
    ctx.arc(250,250,100,0,360);
    ctx.strokeStyle = "blue";
    ctx.lineWidth = 2;
    ctx.stroke();

    ctx.fillStyle = 'orange';
    ctx.fill();

    dx = -60;
    dy = -30;
    ctx.beginPath();
    ctx.moveTo(250+dx,    250+dy);
    ctx.lineTo(250+dx+40, 250+dy);
    ctx.lineTo(250+dx+20, 250+dy+20);
    ctx.fillStyle = 'black';
    ctx.fill();

    dx = 60;
    dy = -30;
    ctx.beginPath();
    ctx.moveTo(250+dx,    250+dy);
    ctx.lineTo(250+dx-40, 250+dy);
    ctx.lineTo(250+dx-20, 250+dy+20);
    ctx.fillStyle = 'black';
    ctx.fill();
});
