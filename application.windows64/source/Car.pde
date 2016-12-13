class Car {
  
 color c;
 float x;
 float y;
 float xspeed;
 
  Car(float ypos_) {
   c = color(220,0,0);
   x = 0;
   y = ypos_;
   xspeed = 1;
 }
 
 void display() {
  fill(c);
  rect(x, y, 30, 10);
 }
 
 void drive() {
  x = x + xspeed;
  if (x>width) {
   x = 0;
  }
 }
}