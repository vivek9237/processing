PImage img;
int slices = 12*3;
float angle = PI/slices;
PShape mySlice;
float radius;

void setup() {
  //size(1000, 1000, P2D);                      
  fullScreen(P2D);
  radius = max(width, height);
  mySlice = createShape(); 
  //img = loadImage("river-pebbles-500x500.jpg");
  //img = loadImage("color.jpeg");
  //img = loadImage("IMG-20200109-WA0013.jpg");
  //img = loadImage("WhatsApp Image 2020-04-30 at 7.07.28 PM.jpeg");
  //img = loadImage("WhatsApp Image 2020-04-29 at 11.00.25 AM.jpeg");
 img = loadImage("download123.png");
  
}

float offset = 0;
void draw() {
  background(0);
  offset+=PI/180;

  mySlice = createShape();
  mySlice.beginShape(TRIANGLE);
    mySlice.texture(img);
    mySlice.noStroke();
    mySlice.vertex(0, 0, img.width/1.2, img.height/1.2);
    mySlice.vertex(cos(angle)*radius, sin(angle)*radius, cos(angle+offset)*radius+img.width/2, sin(angle+offset)*radius+img.height/2);
    mySlice.vertex(cos(-angle)*radius, sin(-angle)*radius, cos(-angle+offset)*radius+img.width/2, sin(-angle+offset)*radius+img.height/2);
  mySlice.endShape();

  translate(width/2, height/2);
  for (int i = 0; i < slices; i++) {
    rotate(angle*2);
    shape(mySlice);
  }
}
