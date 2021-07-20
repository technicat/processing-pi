// calculate pi by approximating a circle's circumference
// with an inscribed polygon
  
int count = 0;
float radius = 320.0;

PFont f;

float pi() {
   return circumference()/(2.0*radius);
}

float circumference() {
  return segment()*(float)count;
}

float segment() {
  float angle = PI/(float)count;
  return 2*(sin(angle)*radius);
}
  

void setup() {
  size(640,640);
  background(255);
  f = createFont("Arial",16,true);
}

void draw() {
   count++;
 //  fill(255);
 // ellipse(radius,radius,2*radius,2*radius);
  drawLines();
  drawText();
}

void drawLines() {
   fill(0,255,0);
   float angle = 2*PI/(float)count;
  for (int i=0; i< count; ++i) {
   float tangle1 = (float)i*angle;
   float x1 = radius*cos(tangle1);
   float y1 = radius*sin(tangle1);
   float tangle2 = (float)i*angle;
   float x2 = radius*cos(tangle2);
   float y2 = radius*sin(tangle2);
   line(radius-x1,radius-y1,radius-x2,radius-y2);
  }
}

void drawText() {
  fill(255);
  rect(0,0,120,70);
  fill(0);
  textFont(f,20);
  text("pi = ",10,25);
  text(pi(),50,25);
   text("sides = ",10,50);
  text(count,75,50);
}
