void setup(){
  size(300,300);
  background(0,3,72);
}

void draw(){
  //sun
  fill(#EFBA00);
  arc(0, 0, 150,150, 0, HALF_PI);
  
  //body of  spaceship
  fill(153,25,74,1);
  quad(150,150, 175,150, 175,160, 150,160); 
  
  //Top of spaceship
  fill(117,117,113);
  triangle(150,145, 150,165, 140,155);
  
  //Fire
  fill(#E07206);
  beginShape();
  vertex(175,150);
  vertex(180, 155);
  vertex(175, 160);
  endShape(CLOSE);
  
  //planet1
  fill(18,24,201);
  ellipse(250,120, 75, 75);
  
  //planet1 Moon "crescent"
  fill(255);
  strokeWeight(0);
  bezier(230,66, 240,70, 240,70, 230,80);
  
  //planet1 Terrain1
  fill(#19C92E);
  arc(240,130, 40,35, 0, PI+QUARTER_PI, PIE);
  
  //planet1 Terrain2
  fill(#19C92E);
  arc(260,110, 25,20, 0, HALF_PI, PIE);
  
  //planet2
  fill(201,17,0);
  ellipse(50,200,75,75);
  
  
}