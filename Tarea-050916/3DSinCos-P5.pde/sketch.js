var yoff = 0.0;
var frec = 0.2;

function setup() {
  createCanvas(800, 800, WEBGL);
}

function draw() {
  background(255);
  rotateX(radians(60));
  translate(width/32, height / 2);

  var radius = 500;
  var xoff = 0;
  for (var a = 0; a < TWO_PI; a += frec) {
    var offset = map(noise(xoff, yoff), 0, 1, -80, 80);
    var r = radius + offset;
    var x = r * cos(a);
    var y = r * sin(a);
    var z= cos(a)*sin(a)*r;
    xoff += 0.1
    
    push();
    translate(x,y,z);
    sphere(5);
    pop();
  }
  yoff += 0.01;
}