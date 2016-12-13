String text = "";
int back = 100;
void setup() {
 size(100, 100);
 
 fill(0);
 textSize(12);
 
 //println(textWidth(text));
}

void draw() {
 background(back);
  
 float pos = textWidth(text);
 line(pos, 0, pos, height);
 text(text, 0, 10);
   
}

void keyPressed() {
 if( key == BACKSPACE ) {
  if (text.length() > 0) {
    text = text.substring(0, text.length() -1);
  }
 } else if (textWidth(text+key) < width) {
   text = text + key;
 }
  if (text.equals("white")) {
   back = 255; 
  } else if (text.equals("grey")) {
   back = 180;  
  }
  
  if (key == RETURN || key == ENTER) {
   text = text.toLowerCase(); 
  }
  
  
}