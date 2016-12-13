Car myCar1;
Car myCar2;

void setup(){
  size(200,200);
  myCar1 = new Car(random(0,200));
  myCar2 =new Car(random(0,200));
 
}

void draw(){
  background(255);
  
  myCar1.display();
  myCar1.drive();
  
  myCar2.display();
  myCar2.drive();  
  
  }