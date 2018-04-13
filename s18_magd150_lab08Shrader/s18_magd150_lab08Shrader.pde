import processing.pdf.*;

boolean recordScreen;

String moonKnight;


PFont arbonnie, magneto;
int index = 0;
float x;

String[] tagline = {
  "From the Dead"
};
  String fileName;
  
void setup(){
  size(200,200);
  surface.setResizable(true);
  surface.setTitle("Load Font");
  background(3, 0, 48);
  fileName = "MoonKnight";
  x = width;
  
 //loads fonts
 arbonnie = loadFont("ARBONNIE-48.vlw");
 magneto = loadFont("Magneto-Bold-48.vlw");
 
 //Alligns text
 textAlign(CENTER);
}

void draw(){

  fill(43,0, 48);
  rect(0, 0, height, width);
  textFont(arbonnie);
  textSize(35);
  fill(100);
  text("Moon Knight", 100, 40);
  
  fill(0);
  ellipse(100,100, 75, 75);
  
  fill(51, 48, 39);
  triangle(75,75, 125,75, 100,100);
  
  fill(0, 157, 171);
  ellipse(75, 95, 10, 15);
  
   fill(0, 157, 171);
  ellipse(125, 95, 10, 15);
  
  fill(100);
  textFont(magneto);
  textSize(30);
  text(tagline[index], x , height-20);
  
  x = x - 3;
  
  //Makes text scroll across screen
  
  
  float w = textWidth(tagline[index]);
  if(x < -w) {
    x = width;
    
    index = (index + 1) % tagline.length;
  }

  //Records screen
  if(recordScreen) {
    beginRecord(PDF, fileName + ".pdf");
  }
  
  if(recordScreen){
    endRecord();
    recordScreen = false;
  }
}

void mousePressed(){
  if(mouseButton == RIGHT){
    recordScreen = true;
  }
}