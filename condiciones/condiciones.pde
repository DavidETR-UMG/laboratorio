float x = 400;
float y = 400;
float dx = 5;
float dy = 5;
String f; 
float c1 = 255;  
float c2 = 255; 
float c3 = 255; 
float C1 = 152; 
float C2 = 240;  
float C3 = 78; 

void setup(){
 size(750,750); 
}

void seleccion(){
    if (key == 'c' || key == 'C') {
      f = "c";
    }
    else if (key == 'r' || key == 'R') {
      f = "r";
    }
     else if (key == 't' || key == 'T') {
      f = "t";
    }
}

void figura(){
 if (f == "c"){
  ellipseMode(CENTER);
  ellipse(x , y , 100, 100); 
 }
 else if (f == "r"){
   rectMode(CENTER);
   rect(x , y , 100 , 100);
 }
 else if (f == "t"){
   triangle(x, y-80 , x-50 , y+30 , x+50 , y+30);
 }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      y = y - dy;
    }
    else if (keyCode == DOWN) {
      y = y + dy;
    } 
    else if (keyCode == LEFT) {
      x = x - dx;
    } 
    else if (keyCode == RIGHT) {
      x = x + dx;
    } 
  } 
}

void draw(){
  if(keyPressed && key == 'a'){
   c1 = random(100);
   c2 = random(100);
   c3 = random(100);   
  }
  else if (key == 'b'){
    c1 = 255;
    c2 = 255;
    c3 = 255;
    f = "c";
    C1 = 45;
    C2 = 100;
    C3 = 250;
  }  
  if(keyPressed && key == 's'){
   C1 = random(255);
   C2 = random(255);
   C3 = random(255);
  }
  background(c1,c2,c3);
  fill(C1,C2,C3);
  seleccion();
  figura();
}
