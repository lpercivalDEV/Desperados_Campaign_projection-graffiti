float diam; // width of ellipse and weight of line
float dripRan = random(1); //random size of drips
float dripWidth = random(1); //drip width
 
int col = color(57,255,29);
private ArrayList<Drip> drips = new ArrayList<Drip>();

void setup() {
 fullScreen();
 background(0);
 smooth();
}
 
void draw() {
 noFill();
 for (Drip drip: drips)
 {
   drip.render();
 }
}
 
void mouseDragged(){
   
  //draw the dot at our cursor
  noStroke(); // no stroke on ellipses
  ellipse(mouseX, mouseY, 50, 50); // draw a dot at the mouse position with the diameter calculated above
   
  // draw a line to smooth spaces between dots
  stroke(col); // kill the stroke
  strokeWeight(10); // make the line the same width as the dot
  line(mouseX, mouseY, pmouseX, pmouseY); // connect the dots with a line
  
  //Draw the drips
  float chance = random(1,5)*random(1,5)*random(1,5);
  if (chance < 50)
  {
    drips.add(new Drip(mouseX, mouseY));
  }
}

// save the image press any key
void keyPressed() {
  setup();
}