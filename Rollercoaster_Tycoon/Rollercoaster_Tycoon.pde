// IGNORE THIS TAB FOR NOW
float radius = 50.0;
int X, Y;
int nX, nY;
int delay = 0;

// Setup the Processing Canvas
void setup(){

  size(1000,800);
  strokeWeight( 5 );
  frameRate( 60 );

  
  nX = X;
  nY = Y;  
}

// Main draw loop
void draw(){

  
  // Fill canvas picture
  background(1,142,14);
  strokeWeight(1);
  for(int i = 0; i<1000;i+=20){
    line(i,0,i,600);
  }
  for(int i = 0; i<600; i+=20){
    line(0,i,1000,i);
  }
  
  // Set fill-color to blue
  fill( 0, 121, 184 );
  rect(0,600,250,100);
  rect(250,600,250,100);
  rect(500,600,250,100);
  rect(750,600,250,100);
  rect(0,700,250,100);
  rect(250,700,250,100);
  rect(500,700,250,100);
  rect(750,700,250,100);
  
  if(mousePressed){
    if(mouseX>0 && mouseX <250 && mouseY>600 && mouseY <700){
      println("The mouse is pressed and over tzhe button");

    }
  } 
  
  // Set stroke-color white
  stroke(255); 
  
  // Draw menu
  

  
  fill(0);
  textSize(15);
  textAlign(CENTER);
  text("Rollercoaster",125,650);
  

}