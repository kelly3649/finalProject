  // IGNORE THIS TAB FOR NOW
  import java.util.*;
  import java.lang.Math;
  float radius = 50.0;
  int X, Y;
  int nX, nY;
  int delay = 0;
  boolean rcButtonPressed,sButtonPressed,walkable;
  ArrayList<Rollercoaster> rc = new ArrayList<Rollercoaster>(); 
  ArrayList<Stand> s = new ArrayList<Stand>();
  // Setup the Processing Canvas
  void setup() {
    Rollercoaster r1 = new Rollercoaster(0,0,20);
    rc.add(r1);
    Person p1 = new Person();
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
    strokeWeight(2);
    /*
    for (int i = 0; i<1000; i+=20) {
      line(i, 0, i, 600);
    }
    for (int i = 0; i<600; i+=20) {
      line(0, i, 1000, i);
    }
  */
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
    text("Stand",375,650);
    
    for(int i = 0;i<rc.size();i++){
      fill(255,0,0);
      rect(rc.get(i).getX(),rc.get(i).getY(),rc.get(i).getrwidth(),20);
    }
  for(int i = 0;i<s.size();i++){
    fill(249,192,255);
    rect(s.get(i).getX(),s.get(i).getY(),s.get(i).getswidth(),20);
    }
  }
  void mousePressed(){
    if (mouseX>0 && mouseX <250 && mouseY>600 && mouseY <700) {
        println("Release to place rollercoaster");
        rcButtonPressed = true;
    }
    if (mouseX>250 && mouseX <500 && mouseY>600 && mouseY <700) {
        println("Release to place Stand");
        sButtonPressed = true;
    }
  }
  void mouseReleased(){
    if(rcButtonPressed){
      
      Rollercoaster r = new Rollercoaster(mouseX, mouseY,20);
      rc.add(r);
      
      println("RELEASE WORKED");
    }
    if(sButtonPressed){
      
      Stand s1 = new Stand(mouseX, mouseY,20);
      s.add(s1);
      
     // println("RELEASE WORKED");
    }
    rcButtonPressed = false;
    sButtonPressed = false;
    }
   


 