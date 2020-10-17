void setup() {
  size(600, 400, P2D);
  orientation(PORTRAIT);
}

void draw() {
   background(150);
   
   int s = second();
   int m = minute();
   int h = hour();
   
   pushMatrix();
   translate(600*0.5, 400*0.5);
   
   for (int i=0; i<60; i++) {
     strokeWeight(3);
     stroke(250);
     pushMatrix();
     rotate(i*TWO_PI/60);
     if(i==0 || i==15 || i==30 || i==45) {
       strokeWeight(6);
       line(-170, 0, -200, 0);
     }
     else if (i%5==0) {
       line(-180, 0, -200, 0);
     }
     else {
       line(-195, 0, -200, 0);
     }
     popMatrix();
   }
   
   // seconds
   strokeWeight(3);
   stroke(204, 102, 0);
   pushMatrix();
   rotate(s*TWO_PI/60);
   line(0, 0, 0, -200);
   popMatrix();
   
   // minutes
   strokeWeight(6);
   stroke(0);
   pushMatrix();
   rotate(m*TWO_PI/60);
   line(0,0,0,-200);
   popMatrix();
   
   // hours
   strokeWeight(10);
   pushMatrix();
   rotate(h*TWO_PI/24);
   line(0,0,0,-120);
   popMatrix();
   
   
   popMatrix();
}
