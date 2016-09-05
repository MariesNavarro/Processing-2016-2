float yoff = 0.0;
float frec = 0.2;

void setup (){
  size(800,800,P3D);
}

void draw(){
  background(255);
  rotateX(radians(60));
  translate(width/2,height/2);


  pushMatrix();
  translate(0,0,-120);
  int radius = 150;
  float xoff = 0;
    for (float a = 0; a < TWO_PI; a += frec) {
      float offset = map(noise(xoff, yoff), 0, 1, -80, 80);
      float r = radius + offset;
      float x= r * cos(a);
      float y= r * sin(a);
      float z= cos(a)*sin(a)*r;
      xoff += 0.1;

      pushMatrix();
      translate(x,y,z);
      sphere(2);
      popMatrix();
    }
  yoff += 0.01;
  popMatrix();
}
