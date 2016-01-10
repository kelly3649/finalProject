// IGNORE THIS TAB FOR NOW
float radius = 50.0;
int X, Y;
int nX, nY;
int delay = 0;

// Setup the Processing Canvas
void setup(){
  size( 1600, 900 );
  strokeWeight( 10 );
  frameRate( 60 );
  X = width / 2;
  Y = height / 2;
  nX = X;
  nY = Y;  
}

// Main draw loop
void draw(){
  
  // Fill canvas picture
  background(1,142,14);
  
  // Set fill-color to blue
  fill( 0, 121, 184 );
  
  // Set stroke-color white
  stroke(255); 
  
  // Draw menu
  rect(0, 800, 1600, 100);
  line(200, 800, 200, 900);
  line(400, 800, 400, 900);
  line(600, 800, 600, 900);
  line(800, 800, 800, 900);
  line(1000, 800, 1000, 900);
  line(1200, 800, 1200, 900);
  line(1400, 800, 1400, 900);
  line(1600, 800, 1600, 900);
  
  fill(0);
  textSize(30);
  textAlign(CENTER);
  text("Rollercoaster", 100,860 );
}


// Set circle's next destination
void mouseMoved(){
  nX = mouseX;
  nY = mouseY;  
}

void mousePressed(){
  radius++;
}