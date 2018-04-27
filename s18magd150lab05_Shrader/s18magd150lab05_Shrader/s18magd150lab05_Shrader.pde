float x = 275;
float y = 175;
float w = 20;
float h = 20;
float x2 =285;
float y2 = 150;
float w2 = 20;
float h2 = 20;
color onColor, offColor, baseColor;
color currentColor;
boolean onOver = false;
boolean offOver = false;
void setup(){
 size(300, 200); 
 onColor = color(255);
 offColor = color(0);
 
 background(100);

}

void draw(){
  
  
  //Old Fashioned TV "haunted" 
  
  //Back of TV
  fill(161, 83, 13);
  beginShape();
  vertex(0,0);
  vertex(300,0);
  vertex(300,200);
  vertex(0, 200);
  endShape(CLOSE);
  
  //TV Screen
  fill(0);
  strokeWeight(0);
  beginShape();
  vertex(40,40);
  vertex(240, 40);
  vertex(240, 160);
  vertex(40, 160);
  endShape(CLOSE);
  
  //On button
  fill(0);
  rect(x, y, w, h);
  text("On", 275, 170);
  if(mousePressed){
    if(mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h){
      println("The TV is now On");
       fill(255);
  strokeWeight(0);
  beginShape();
  vertex(40,40);
  vertex(240, 40);
  vertex(240, 160);
  vertex(40, 160);
  endShape(CLOSE);
      fill(255);
     
    }
  }
  //Random screen Button
  fill(255);
  text("Off", 275, 140);
  fill(100);
  ellipseMode(CENTER);
  ellipse(x2, y2, w2, h2);
  if(mousePressed){
    if(mouseX>x2 && mouseX <x2+w2 && mouseY>y2 && mouseY <y2+h2){
  println("The TV is now malfunctioning");
  fill(random(255), random(255), random(255));
  beginShape();
  vertex(40,40);
  vertex(240, 40);
  vertex(240, 160);
  vertex(40, 160);
  endShape(CLOSE);
      
    }
  }
}
  