  // IGNORE THIS TAB FOR NOW
  import java.util.*;
  import java.lang.Math;
  int lastTime;
  int wait;
  //mechanics
  int numpeople;
  int attractionlevel;
  int money;
  Random r;
  
  //buttons
  boolean rcButtonPressed,sButtonPressed,nameButtonPressed,jButtonPressed,walkable;
  
  //arraylists
  ArrayList<Rollercoaster> rc = new ArrayList<Rollercoaster>(); 
  ArrayList<Stand> s = new ArrayList<Stand>();
  ArrayList<Person> p = new ArrayList<Person>();
  ArrayList<Barf> b = new ArrayList<Barf>();
  ArrayList<Janitor> j = new ArrayList<Janitor>();
  // Setup the Processing Canvas
  void setup() {
    //tests
    //Rollercoaster r1 = new Rollercoaster(450,450,20);
    //rc.add(r1);
    //Person p1 = new Person();
    
    //setup game
    size(1000, 800);
    strokeWeight( 5 );
    frameRate( 60 );
    
    //setup game mechanics
    money = 10000;
    //setup random
    r = new Random();
    //setup delay
    lastTime = millis();

  }
   
  // Main draw loop
  void draw() {
    
    attractionlevel = rc.size()*10 - b.size() * 1;
    if (numpeople < attractionlevel){
      if (millis() - lastTime > wait){
        Person p1 = new Person();
        p.add(p1);
        numpeople ++;
        
        lastTime = millis();
        wait = r.nextInt(5) * 1000;

      }
    }
    
      
      
 
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
    //attractionlevel box
    rect(750, 600, 250, 100);
    rect(0, 700, 250, 100);
    rect(250, 700, 250, 100);
    rect(500, 700, 250, 100);
    //moneybox
    rect(750, 700, 250, 100);
    
   
    // Set stroke-color white
    stroke(255); 
  
    // Draw menu
    //
  
  
    fill(0);
    textSize(15);
    textAlign(CENTER);
    text("Rollercoaster", 125, 650);
    text("Stand",375,650);
    text("Janitor", 625, 650);
    text("Money: " + money, 875, 750);
    text("Attraction Level: " + attractionlevel, 875, 650);
    fill(255,255,255);
    rect(450,560,100,40);
    for(int i = 0;i<rc.size();i++){
        fill(255,0,0);
        rect(rc.get(i).getX(),rc.get(i).getY(),rc.get(i).getrwidth(),20);
      }
    for(int i = 0;i<s.size();i++){
      fill(249,192,255);
      rect(s.get(i).getX(),s.get(i).getY(),s.get(i).getswidth(),20);
      }
      
    for(int i = 0; i<b.size();i++){
      fill(222,184,135);
      int barfx = b.get(i).getX();
      int barfy = b.get(i).getY();
      triangle(barfx,barfy,barfx + 10,barfy,barfx + 5,barfy + 10);
    }
    for(int i = 0;i<j.size();i++){
      fill(255,255,255);
      ellipse(j.get(i).getX(),j.get(i).getY(),10.0,10.0);
      
      
      if (b.size() > 0){
         Barf b1 = b.get(r.nextInt(b.size()));
         if (!b1.getChosen()){ 
          //println("ababababab");
          if (j.get(i).chooseBarf(b1)){
            b1.setChosen();   
          }
         }
         if (j.get(i).moveToBarf()){
             b.remove(j.get(i).getBarf());
         }
       }
    }
    for(int i = 0;i<p.size();i++){
      fill(0,0,0);
      ellipse(p.get(i).getX(),p.get(i).getY(),10.0,10.0);
      
      
      if (!p.get(i).choseAttraction()){
        Attractions a = rc.get(r.nextInt(rc.size()));
        if (r.nextInt(2) == 1 && s.size() > 0){ 
            a = s.get(r.nextInt(s.size()));
        }
      }
      
      
      if (p.get(i).getMoney() < p.get(i).getAttraction().getCost()){
         p.get(i).moveToEntrance();
      }else{
         if (p.get(i).moveToAttraction()){
           money += p.get(i).getAttraction().getCost();
         }
      }
      
      if (p.get(i).getQueasy()){
         if (millis() - lastTime > wait){
           Barf b1 = new Barf(p.get(i).getX(),p.get(i).getY());
           b.add(b1);
           p.get(i).notEat();
           
           
           lastTime = millis();
           wait = r.nextInt(5) * 1000; 
         }
      }
      
      if (p.get(i).getX() == 500 && p.get(i).getY() == 590){
        p.remove(p.get(i));
        numpeople--;
      }
      
      
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
    if (mouseX>450 && mouseX<550 && mouseY>560 && mouseY<600){
      nameButtonPressed = true;
    }
  }
  void mouseReleased(){
    if(rcButtonPressed){
      Rollercoaster r = new Rollercoaster(round(mouseX), round(mouseY),20);
      if (money >= 1000){
        money -= 1000;
        rc.add(r);
      }else{
        println("you're poor");
      }
      
    }
    if(sButtonPressed){
      
      Stand s1 = new Stand(mouseX, mouseY,20);
      s.add(s1);
      
     // println("RELEASE WORKED");
    }
    if(nameButtonPressed){
      
    }
    rcButtonPressed = false;
    sButtonPressed = false;
    nameButtonPressed = false;
    }
   



 