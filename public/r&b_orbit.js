$(document).ready(function(){

  console.log("r&b_orbit - disabled");
  
 return;


  //    Clear the canvas           Unless the shapes you'll be drawing fill the complete canvas (for instance a backdrop image),
  //                               you need to clear any shapes that have been drawn previously. The easiest way to do this is
  //                               using the clearRect() method.

  //  Save the canvas state        If you're changing any setting (such as styles, transformations, etc) which affect the canvas state
  //                               and you want to make sure the original state is used each time a frame is drawn, you need to save that original state.

  //  Draw animated shapes         The step where you do the actual frame rendering.


  //  Restore the canvas state     If you've saved the state, restore it before drawing a new frame.


  //  window.setInterval(function, delay);


  var PI = 3.1415923;
  var WIDTH = 500;
  var HEIGHT = 500;
  var radians = 0.0;

  function init(){
    setInterval(draw,30);
  }
  window.onload = init;

  var X_offset = 120;
  var Y_offset = 230;


  var ctx = document.getElementById('graphics').getContext('2d');
  ctx.rotate(-PI/6);

  function draw() {
    ctx.globalCompositeOperation = 'destination-over';
    ctx.clearRect(0,0,WIDTH,HEIGHT);     // clear canvas

    // planetary
    $('canvas').drawArc({
      fillStyle: '#000',
      x: X_offset, y: Y_offset,
      radius: 50
    });

    $('canvas').drawEllipse({
      strokeStyle: '#fff',
      strokeWidth: 10,
      x: X_offset, y: Y_offset,
      width: 150, height: 70,
    });

    $('canvas').drawEllipse({
      strokeStyle: '#f00',
      // strokeStyle: "rgba(255,0,0,0.5)",
      strokeWidth: 7,
      x: X_offset, y: Y_offset,
      width: 150, height: 70,
    });
    radians += 0.02;
    if(radians > 2*PI){
      radians = 0;
    }
    angle = radians;

    var a = 75;
    var b = 35.0;

    tan_angle = Math.tan(angle);
    x = a*b/Math.sqrt( b*b + a*a * tan_angle * tan_angle);
    y = a*b*tan_angle/Math.sqrt(b*b + a*a*tan_angle* tan_angle);

    if(PI/2.0 <= angle && angle < PI * 1.5) {
      x = -x;
      y = -y;
    }

    $('canvas').drawArc({
      name: "moon",
      fillStyle: '#fff',
      x: x+X_offset , y: y+Y_offset,
      radius: 11.5
    });


    $('canvas').drawArc({
      name: "moon",
      fillStyle: '#000',
      x: x+X_offset , y: y+Y_offset,
      radius: 10
    });


    $('canvas').drawArc({
      fillStyle: '#fff',
      x: X_offset, y: Y_offset,
      radius: 53,
      start: 270, end: 90
    });


    $('canvas').drawArc({
      fillStyle: '#000',
      x: X_offset, y: Y_offset,
      radius: 50,
      start: 260, end: 99 
    });

  }

});






