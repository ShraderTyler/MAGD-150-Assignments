void setup(){
  size(250,250);
  background(150);
}

void draw(){
  //building
  noStroke();
  fill(0);
  rect(50,100,50,150);
  
  //door
  rectMode(CORNER);
  strokeWeight(20);
  fill(200);
  rect(60,240,5,10);
  
  //sign base
  strokeWeight(5);
  stroke(255);
  noFill();
  ellipse(75,100, 20,20);
  
  //window
  stroke(255);
  fill(255);
  ellipse(60,150, 10,10);
  
  //crane
  stroke(0);
  line(95,100, 105,75);
  line(105,100, 105,75);
  
  //end of crane
  strokeWeight(10);
  point(105,105);
  
  //"person" in window
  strokeWeight(5);
  point(60,155);
}
