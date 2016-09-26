
int x = 0; // global variable
int speed = 10; //how fast it goes

void setup() {
  size(400, 400); // Set the size of the window


  for (int i=0; i<10; i=i+2) {// i starts at 0 and will increment by 2 and is less than 10
    println(i);
  }
}



void draw() {
  //If the mouse is on the left side of the screen, draw a blue background, otherwise draw a red background.
  if (mouseX < width/2) { 
    background(0, 27, 255);
  } else {
    background(255, 40, 61);
  }

  //Draws a rectangle with a fill color of orange and moves around at any given xy coordinate
  stroke(0);
  fill(255, 83, 13);
  rect(mouseX, mouseY, 100, 200);

  //Draws a circle with a fill color of blue
  fill(8, 19, 255);
  ellipseMode (CORNERS);
  ellipse (75, 325, 150, 400);

  x = x + speed; //add the current speed to x
  if ((x > width) || (x < 0)) {
    speed = speed * -1; // If the quadrilatoral reaches either edge, multiply the speed by -1 to reverse speed and turn around
  }

  //Draws a quadrilatoral with a fill color of pink
  fill(255, 135, 153);
  quad(x, 25, 100, 75, 100, 225, 100, 275);

  x = x + speed; //add the current speed to x
  if ((x > width) || (x < 0)) {
    speed = speed * -1; // If the triangle reaches either edge, multiply the speed by -1 to reverse speed and turn around
  }

  //Draws a triangle with a fill color of yellow
  stroke(0);
  fill(255, 248, 13);
  triangle(x, 350, 300, 400, 400, 400);

  //Draws a line with a color of black
  stroke (0, 0, 0);
  strokeWeight (9);
  line (100, 125, 150, 125);

  //Draws a line with a color of green
  stroke (0, 255, 68);
  strokeWeight(3);
  line (150, 250, 100, 375);

  //Draws a line with a color of red
  stroke (255, 0, 0);
  strokeWeight(6);
  line (250, 250, 350, 375);
}