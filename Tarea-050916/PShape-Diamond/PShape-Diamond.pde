import processing.pdf.*;

import peasy.test.*;
import peasy.org.apache.commons.math.*;
import peasy.*;
import peasy.org.apache.commons.math.geometry.*;
import processing.opengl.*;


PeasyCam cam;

PImage i1;
PImage tex2;
PImage tex3;
PImage tex4;
PImage tex5;
PImage tex6;

//diamond
int ypibote =10;
int pibote = 0;
int yt =-100;
int yt2 =-80;
int yt3 =-60;
int yt4 =-10;

int xt =10; 
int zt =10;

void setup() {
  size(800, 800, OPENGL);
  cam = new PeasyCam(this, 400);
}



void draw () {

  background (252, 250, 250);
  strokeWeight(1);
  smooth();
  beginShape();
  smooth();
  vertex(-xt, yt, -zt*3); //1  
  vertex(xt, yt, -zt*3); //2  
  vertex(xt*3, yt, -zt); //3 
  vertex(xt*3, yt, zt); //4  
  vertex(xt, yt, zt*3); //5  
  vertex(-xt, yt, zt*3); //6  
  vertex(-xt*3, yt, zt); //7 
  vertex(-xt*3, yt, -zt); //8 
  vertex(-xt, yt, -zt*3); //1 
  endShape();



  beginShape(TRIANGLES);
  smooth();
  vertex(-xt, yt, -zt*3); //1 p.1
  vertex(0, yt2, -50); // pico       1II
  vertex(xt, yt, -zt*3); //2 p.1
  endShape();


  beginShape(TRIANGLES);
  smooth();
  vertex(xt, yt, -zt*3); //2 p.1
  vertex(40, yt2, -40); // pico      2II
  vertex(xt*3, yt, -zt); //3 p.1
  endShape();

  beginShape(TRIANGLES);

  vertex(xt*3, yt, -zt); //3 p.1
  vertex(50, yt2, 0); // pico       3II
  vertex(xt*3, yt, zt); //4 p.1
  endShape();

  beginShape(TRIANGLES);

  vertex(xt*3, yt, zt); //4 p.1
  vertex(40, yt2, 40); // pico      4II
  vertex(xt, yt, zt*3); //5 p.1
  endShape();

  beginShape(TRIANGLES);

  vertex(xt, yt, zt*3); //5 p.1
  vertex(0, yt2, 50); // pico        5II
  vertex(-xt, yt, zt*3); //6 p.1
  endShape();

  beginShape(TRIANGLES);

  vertex(-xt, yt, zt*3); //6 p.1
  vertex(-40, yt2, 40); // pico      6II
  vertex(-xt*3, yt, zt); //7 p.1
  endShape(); 

  beginShape(TRIANGLES);

  vertex(-xt*3, yt, zt); //7 p.1
  vertex(-50, yt2, 0); // pico       7II
  vertex(-xt*3, yt, -zt); //8 p.1
  endShape();

  beginShape(TRIANGLES);

  vertex(-xt*3, yt, -zt); //8 p.1
  vertex(-40, yt2, -40); // pico     8II
  vertex(-xt, yt, -zt*3); //1 p.1
  endShape();


  //TAPA p.3


  beginShape(QUADS);

  vertex(0, yt2, -50);  // 1 p.2
  vertex(xt, yt, -zt*3); //2 p.1
  vertex(40, yt2, -40);
  ; // 2 p.2 
  vertex(20, yt3, -60); //pico              1III
  endShape();


  beginShape(QUADS);

  vertex(40, yt2, -40); //2 p.2 
  vertex(xt*3, yt, -zt); //3 p.1
  vertex(50, yt2, 0); //3 p.2
  vertex(60, yt3, -20); //pico              2III
  endShape();


  beginShape(QUADS);

  vertex(50, yt2, 0); //3 p.2
  vertex(xt*3, yt, zt); //4 p.1
  vertex(40, yt2, 40); //4 p.2
  vertex(60, yt3, 20); //pico               3III
  endShape();


  beginShape(QUADS);

  vertex(40, yt2, 40); //4 p.2
  vertex(xt, yt, zt*3); //5 p.1
  vertex(0, yt2, 50); //5 p.2
  vertex(20, yt3, 60); //pico              4III
  endShape();


  beginShape(QUADS);

  vertex(0, yt2, 50); //5 p.2
  vertex(-xt, yt, zt*3); //6 p.1
  vertex(-40, yt2, 40); //6 p.2
  vertex(-20, yt3, 60); //pico             5III
  endShape();


  beginShape(QUADS);

  vertex(-40, yt2, 40); //6 p.2
  vertex(-xt*3, yt, zt); //7 p.1
  vertex(-50, yt2, 0); //7 p.2
  vertex(-60, yt3, 20); //pico             6III
  endShape();


  beginShape(QUADS);

  vertex(-50, yt2, 0); //7 p.2
  vertex(-xt*3, yt, -zt); //8 p.1 
  vertex(-40, yt2, -40); //8 p.2
  vertex(-60, yt3, -20); //pico             7III
  endShape();


  beginShape(QUADS);

  vertex(-40, yt2, -40); //8 p.2
  vertex(-xt, yt, -zt*3); //1 p.1
  vertex(0, yt2, -50); //1 p.2
  vertex(-20, yt3, -60); //pico             8III
  endShape();


  //TAPA p.4
  // PICO                     1IV
  //1

  beginShape(TRIANGLES);

  vertex(0, yt2, -50); //1 p.2
  vertex(20, yt3, -60); //1p.3
  vertex(0, yt3, -70);//pico
  endShape();

  //2
  beginShape(TRIANGLES);

  vertex(0, yt2, -50); //1 p.2
  vertex(-20, yt3, -60); //8 p.3
  vertex(0, yt3, -70); //pico
  endShape();

  // PICO                     2IV
  //1
  beginShape(TRIANGLES);

  vertex(40, yt2, -40); //2 p.2
  vertex(20, yt3, -60); //1 p.3
  vertex(50, yt3, -50); //pico
  endShape();
  //2
  beginShape(TRIANGLES);

  vertex(40, yt2, -40); //2 p.2
  vertex(60, yt3, -20); //2 p.3
  vertex(50, yt3, -50); //pico
  endShape();

  // PICO                     3IV
  //1
  beginShape(TRIANGLES);

  vertex(50, yt2, 0); //3 p.2
  vertex(60, yt3, -20); //2 p.3
  vertex(70, yt3, 0); //pico
  endShape();
  //2
  beginShape(TRIANGLES);

  vertex(50, yt2, 0); //3 p.2
  vertex(60, yt3, 20); //3 p.3
  vertex(70, yt3, 0); //pico
  endShape();


  // PICO                     4IV
  //1
  beginShape(TRIANGLES);

  vertex(40, yt2, 40); //4 p.2 
  vertex(60, yt3, 20); //3 p.3
  vertex(50, yt3, 50); //pico
  endShape();
  //2
  beginShape(TRIANGLES);

  vertex(40, yt2, 40); //4 p.2 
  vertex(20, yt3, 60); //4 p.3
  vertex(50, yt3, 50); //pico
  endShape();


  // PICO                     5IV
  //1
  beginShape(TRIANGLES);

  vertex(0, yt2, 50); //5 p.2
  vertex(20, yt3, 60); //4 p.3
  vertex(0, yt3, 70); //pico
  endShape();
  //2
  beginShape(TRIANGLES);

  vertex(0, yt2, 50); //5 p.2
  vertex(-20, yt3, 60); //5 p.3
  vertex(0, yt3, 70); //pico
  endShape();


  // PICO                     6IV
  //1
  beginShape(TRIANGLES);

  vertex(-40, yt2, 40); //6 p.2
  vertex(-20, yt3, 60); //5 p.3
  vertex(-50, yt3, 50); //pico
  endShape();
  //2
  beginShape(TRIANGLES);

  vertex(-40, yt2, 40); //6 p.2  
  vertex(-60, yt3, 20); //6 p.3
  vertex(-50, yt3, 50); //pico
  endShape();


  // PICO                     7IV
  //1
  beginShape(TRIANGLES);

  vertex(-50, yt2, 0); //7 p.2  
  vertex(-60, yt3, 20); //6 p.3
  vertex(-70, yt3, 0); //pico
  endShape();
  //2
  beginShape(TRIANGLES);

  vertex(-50, yt2, 0); //7 p.2 
  vertex(-60, yt3, -20); //7 p.3
  vertex(-70, yt3, 0); //pico
  endShape();

  // PICO                     8IV
  //1
  beginShape(TRIANGLES);

  vertex(-40, yt2, -40); //8 p.2
  vertex(-60, yt3, -20); //7 p.3
  vertex(-50, yt3, -50); //pico
  endShape();
  //2
  beginShape(TRIANGLES);

  vertex(-40, yt2, -40); //8 p.2
  vertex(-20, yt3, -60); //8 p.3
  vertex(-50, yt3, -50); //pico
  endShape();


  //BASE 2

  //Pico                            1V
  //1
  beginShape(TRIANGLES);

  vertex(20, yt3, -60); //1p.3
  vertex(0, yt3, -70); //1 p.4
  vertex(0, yt4, -20); //pico
  endShape();
  //2
  beginShape(TRIANGLES);

  vertex(-20, yt3, -60); //8p.3
  vertex(0, yt3, -70); //1 p.4
  vertex(0, yt4, -20); //pico
  endShape();


  //Pico                            2V
  //1
  beginShape(TRIANGLES);

  vertex(20, yt3, -60); //1p.3
  vertex(50, yt3, -50);//2 p.4
  vertex(20, yt4, -20); //pico
  endShape();
  //2
  beginShape(TRIANGLES);

  vertex(60, yt3, -20); //2p.3
  vertex(50, yt3, -50);//2 p.4
  vertex(20, yt4, -20); //pico
  endShape();

  //Pico                            3V
  //1
  beginShape(TRIANGLES);

  vertex(60, yt3, -20); //2p.3
  vertex(70, yt3, 0);//3 p.4
  vertex(20, yt4, 0); //pico
  endShape();
  //2
  beginShape(TRIANGLES);

  vertex(60, yt3, 20); //3p.3
  vertex(70, yt3, 0);//3 p.4
  vertex(20, yt4, 0); //pico
  endShape();

  //Pico                            4V
  //1
  beginShape(TRIANGLES);

  vertex(60, yt3, 20); //3p.3
  vertex(50, yt3, 50);//4 p.4
  vertex(20, yt4, 20); //pico
  endShape();
  //2
  beginShape(TRIANGLES);

  vertex(20, yt3, 60); //4p.3
  vertex(50, yt3, 50);//4 p.4
  vertex(20, yt4, 20);//pico
  endShape();

  //Pico                            5V
  //1
  beginShape(TRIANGLES);

  vertex(20, yt3, 60); //4p.3
  vertex(0, yt3, 70);//5 p.4
  vertex(0, yt4, 20);//pico
  endShape();
  //2
  beginShape(TRIANGLES);

  vertex(-20, yt3, 60); //5p.3
  vertex(0, yt3, 70);//5 p.4
  vertex(0, yt4, 20);//pico
  endShape();


  //Pico                            6V
  //1
  beginShape(TRIANGLES);

  vertex(-20, yt3, 60); //5p.3
  vertex(-50, yt3, 50);//6  p.4
  vertex(-20, yt4, 20);//pico
  endShape();
  //2
  beginShape(TRIANGLES);

  vertex(-60, yt3, 20); //6p.3
  vertex(-50, yt3, 50);//6  p.4
  vertex(-20, yt4, 20);//pico
  endShape();


  //Pico                            7V
  //1
  beginShape(TRIANGLES);

  vertex(-60, yt3, 20); //6p.3
  vertex(-70, yt3, 0);//7 p.4
  vertex(-20, yt4, 0);//pico
  endShape();
  //2
  beginShape(TRIANGLES);

  vertex(-60, yt3, -20); //7p.3
  vertex(-70, yt3, 0);//7 p.4
  vertex(-20, yt4, 0);//pico
  endShape();


  //Pico                            8V
  //1
  beginShape(TRIANGLES);

  vertex(-60, yt3, -20); //7p.3
  vertex(-50, yt3, -50);//8 p.4
  vertex(-20, yt4, -20);//pico
  endShape();
  //2
  beginShape(TRIANGLES);

  vertex(-20, yt3, -60); //8p.3
  vertex(-50, yt3, -50);//8 p.4
  vertex(-20, yt4, -20);//pico
  endShape();




  //BASE 1

  //   1VI

  beginShape(QUADS);

  vertex(20, yt3, -60); //1p.3 superior
  vertex(0, yt4, -20); //1 p.5 lado
  vertex (pibote, ypibote, pibote);//pico
  vertex(20, yt4, -20); //2 p.5 lado
  endShape();


  //                                2VI
  beginShape(QUADS);

  vertex(60, yt3, -20); //2p.3 superior
  vertex(20, yt4, -20); //2 p.5 lado
  vertex (pibote, ypibote, pibote);//pico
  vertex(20, yt4, 0); //3 p.5 lado
  endShape();

  //                                3VI
  beginShape(QUADS);

  vertex(60, yt3, 20); //3p.3 superior
  vertex(20, yt4, 0); //3 p.5 lado
  vertex (pibote, ypibote, pibote);//pico
  vertex(20, yt4, 20); //4 p.5 lado
  endShape();


  //     4VI
  beginShape(QUADS);

  vertex(20, yt3, 60); //4p.3 superior
  vertex(20, yt4, 20); //4 p.5 lado
  vertex (pibote, ypibote, pibote);//pico
  vertex(0, yt4, 20); //5 p.5 lado
  endShape();
  //                                5VI
  beginShape(QUADS);

  vertex(-20, yt3, 60); //5p.3 superior
  vertex(0, yt4, 20); //5 p.5 lado
  vertex (pibote, ypibote, pibote);//pico
  vertex(-20, yt4, 20); //6 p.5 lado
  endShape();
  //                                6VI

  beginShape(QUADS);

  vertex(-60, yt3, 20); //6p.3 superior
  vertex(-20, yt4, 20); //6 p.5 lado
  vertex (pibote, ypibote, pibote);//pico
  vertex(-20, yt4, 0); //7 p.5 lado
  endShape();


  //                                7VI
  beginShape(QUADS);

  vertex(-60, yt3, -20); //7p.3 superior
  vertex(-20, yt4, 0); //7 p.5 lado
  vertex (pibote, ypibote, pibote);//pico
  vertex(-20, yt4, -20); //8 p.5 lado

  endShape();
  //     8VI
  beginShape(QUADS);


  vertex(-20, yt3, -60); //8p.3 superior

  vertex(-20, yt4, -20); //8 p.5 lado

  vertex (pibote, ypibote, pibote);//pico

  vertex(0, yt4, -20); //1 p.5 lado
  endShape();
}

