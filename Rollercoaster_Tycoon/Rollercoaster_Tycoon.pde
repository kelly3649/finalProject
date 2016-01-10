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
  
  
  // Track circle to new destination
  X+=(nX-X);
  Y+=(nY-Y);
  
  // Fill canvas grey
  background( 100 );
  
  // Set fill-color to blue
  fill( 0, 121, 184 );
  
  // Set stroke-color white
  stroke(255); 
  
  // Draw circle
  ellipse( X, Y, radius, radius );                  
}


// Set circle's next destination
void mouseMoved(){
  nX = mouseX;
  nY = mouseY;  
}