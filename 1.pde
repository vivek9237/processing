void setup(){
  size(400,400);
  background(0);
  print(PI/4);
}//{}
float angle = 0;
int a=1;
void draw(){
  pushMatrix();
  translate(height/2,width/2);
  rotate(angle+=0.7853982*4/60);
  noFill();
  delay(1000);
  stroke(127);
  rectMode(CENTER);
  rect(0,0,map(angle,0,0.7853982,height,height/(sqrt(2))),map(angle,0,0.7853982,height,height/(sqrt(2))));
  //rect(0,0,300,300);
  popMatrix();
}
