import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Objects_2 extends PApplet {

Car myCar1;
Car myCar2;

public void setup(){
  
  myCar1 = new Car(random(0,200));
  myCar2 =new Car(random(0,200));
 
}

public void draw(){
  background(255);
  
  myCar1.display();
  myCar1.drive();
  
  myCar2.display();
  myCar2.drive();  
  
  }
class Car {
  
 int c;
 float x;
 float y;
 float xspeed;
 
  Car(float ypos_) {
   c = color(220,0,0);
   x = 0;
   y = ypos_;
   xspeed = 1;
 }
 
 public void display() {
  fill(c);
  rect(x, y, 30, 10);
 }
 
 public void drive() {
  x = x + xspeed;
  if (x>width) {
   x = 0;
  }
 }
}
  public void settings() {  size(200,200); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Objects_2" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
