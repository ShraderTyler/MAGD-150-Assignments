PVector position;
PVector velocity;
PVector eye1, eye2, scale, center1;
float theta;

void setup(){
  surface.setResizable(true);
  
  size(500,500);
  background(155);
  position = new PVector(250, 250);
  velocity = new PVector(2.5,7);
  
  center1 = new PVector(width * 0.25, height * 0.25);
  scale = new PVector(width * .2, height * .125);
  theta = 0;
  
  
}

void draw(){
  background(150);
  //Interactive clown face
  stroke(2);
  fill(255);
  ellipse(250,250,350,350);  
  
  //Clowns mouth
 
  
   theta = map(mouseX, 0, width, 0, TWO_PI);
  scale.y = map(mouseY, 0, height, height * 0.025, width * 0.02);
 //"eye1" will rotate and scale with mouse movement
pushStyle();
  noStroke();
  
  fill(0);
  pushMatrix();
 translate(200, 200);
  rotate(-theta);
  scale(scale.x, scale.y);
  beginShape();
  vertex(1, 0);
  vertex(.5, .87);
  vertex(-.5, .87);
  vertex(-1, 0);
  vertex(-.5, -.87);
  vertex(.5, -.87);
  endShape();
  eye1 = new PVector(screenX(1, 0), screenY(1, 0));
  popMatrix();
  popStyle();
  
  //Clowns second eye
  pushStyle();
  noStroke();
  
  fill(0, 0, 255);
  pushMatrix();
 translate(300, 200);
  rotate(theta);
  scale(scale.x, scale.y);
  beginShape();
  vertex(1, 0);
  vertex(.5, .87);
  vertex(-.5, .87);
  vertex(-1, 0);
  vertex(-.5, -.87);
  vertex(.5, -.87);
  endShape();
  eye1 = new PVector(screenX(1, 0), screenY(1, 0));
  popMatrix();
  popStyle();
  
  //Clowns nose will bounce around "wildly"
  //Add the speed of the "nose" on the display
  position.add(velocity);
  
  if ((position.x > 300) || (position.x < 200)) {
    velocity.x = velocity.x * -1;
  }
  if ((position.y > 300) || (position.y < 200)) {
    velocity.y = velocity.y * -1;
  }
  
  //Create the Clowns nose
  stroke(0);
  fill(255,0,0);
  ellipse(position.x,position.y,80,80);
  
  
  PVector mouse = new PVector(mouseX, mouseY);
  PVector location = new PVector (width/2, height/2);
  //this setup makes it look like the "nose" is bouncing off the "mouth"
  mouse.sub(location);
  mouse.normalize();
  
  //sets his mouth as straight line in the lower part of his face
  translate(225, 350);
  stroke(0);
  strokeWeight(5);
  line(100, 0, mouse.x, mouse.y); 
 
}