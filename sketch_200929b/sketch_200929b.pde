   
int total = 0;
int inside = 0;

float pi() {
  if (total == 0) {
    return 0;
  } else {
  return inside/total *4;
  }
}
  

void setup() {
  size(640,640);
  rectMode(CENTER);
rect(100,100,20,100);
ellipse(100,70,60,60);
ellipse(81,70,16,32); 
ellipse(119,70,16,32); 
line(90,150,80,160);
line(110,150,120,160);
}

void draw() {
  if (mousePressed) {
    fill(0);
  } else {
    fill(255);
  }
  ellipse(mouseX, mouseY, 80, 80);
}
