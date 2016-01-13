  // IGNORE THIS TAB FOR NOW
  import java.util.*;
  float radius = 50.0;
  int X, Y;
  int nX, nY;
  int delay = 0;
  boolean rcButtonPressed;
  ArrayList<Rollercoaster> rc = new ArrayList<Rollercoaster>(); 

  // Setup the Processing Canvas
  void setup() {
    Rollercoaster r1 = new Rollercoaster(0,0,20,20);
    rc.add(r1);
    size(1000, 800);
    strokeWeight( 5 );
    frameRate( 60 );
  
  
    nX = X;
    nY = Y;
  }
   
  // Main draw loop
  void draw() {

 
   
 
    // Fill canvas picture
    background(1, 142, 14);
    strokeWeight(1);
    for (int i = 0; i<1000; i+=20) {
      line(i, 0, i, 600);
    }
    for (int i = 0; i<600; i+=20) {
      line(0, i, 1000, i);
    }
  
    // Set fill-color to blue
    fill( 0, 121, 184 );
    rect(0, 600, 250, 100);
    rect(250, 600, 250, 100);
    rect(500, 600, 250, 100);
    rect(750, 600, 250, 100);
    rect(0, 700, 250, 100);
    rect(250, 700, 250, 100);
    rect(500, 700, 250, 100);
    rect(750, 700, 250, 100);
   
    // Set stroke-color white
    stroke(255); 
  
    // Draw menu
  
  
  
    fill(0);
    textSize(15);
    textAlign(CENTER);
    text("Rollercoaster", 125, 650);
    for(int i = 0;i<rc.size();i++){
      fill(0,0,255);
      rect(rc.get(i).getX(),rc.get(i).getY(),rc.get(i).getrwidth(),20);
    }
  
  }
  void mousePressed(){
    if (mouseX>0 && mouseX <250 && mouseY>600 && mouseY <700) {
        println("Release to place rollercoaster");
        rcButtonPressed = true;
    }
  }
  void mouseReleased(){
    if(rcButtonPressed){
      
      Rollercoaster r = new Rollercoaster(mouseX, mouseY,20);
      rc.add(r);
      println("RELEASE WORKED");
    }
    rcButtonPressed = false;     
    }
    /*void mouseReleased(){
      Rollercoaster r = new Rollercoaster(mouseX, mouseY,20);
        rc.add(r);
    void mousePressed() {
      if (mouseX>0 && mouseX <250 && mouseY>600 && mouseY <700) {
        println("Click again to place rollercoaster");
        mouseClicked();
        }*/


 