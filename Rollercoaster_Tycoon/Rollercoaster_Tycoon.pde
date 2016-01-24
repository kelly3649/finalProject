  // IGNORE THIS TAB FOR NOW
  import java.util.*;
  import java.lang.Math;
  
  //timing 
  int lastTime;
  int wait;

  PShape fWheel, coaster, stand;
  
  //mechanics
  int numpeople;
  int attractionlevel, level;
  int money;
  Random r;


  
  //buttons
  boolean mButtonPressed,jButtonPressed,fwButtonPressed;
  boolean rcButtonPressed,sButtonPressed;
  
  
  //arraylists
     //shapes
  ArrayList<PShape> coasterIcons = new ArrayList<PShape>();
  ArrayList<PShape> wheelIcons = new ArrayList<PShape>();
  ArrayList<PShape> standIcons = new ArrayList<PShape>();
  ArrayList<PShape> merryIcons = new ArrayList<PShape>();
     //attractions
  ArrayList<Attraction> att = new ArrayList<Attraction>();
  ArrayList<Rollercoaster> rc = new ArrayList<Rollercoaster>(); 
  ArrayList<Stand> s = new ArrayList<Stand>();
  ArrayList<ferrisWheel> fw = new ArrayList<ferrisWheel>();
  ArrayList<MerryGoRound> m = new ArrayList<MerryGoRound>();
     //others
  ArrayList<Person> p = new ArrayList<Person>();
  ArrayList<Barf> b = new ArrayList<Barf>();
  ArrayList<Janitor> j = new ArrayList<Janitor>();
  
  
  void setup() {
    //tests
    //Rollercoaster r1 = new Rollercoaster(450,450,20);
    //rc.add(r1);
    //Person p1 = new Person();
    
    //setup game
    size(1000, 800);
    strokeWeight( 5 );
    frameRate( 60 );
    
    //setup shapes
    for (int i = 1; i <= 6; i++){
      coasterIcons.add(loadShape("icons/coaster"+i+".svg"));
    }
    for (int i = 1; i <= 6; i++){
      standIcons.add(loadShape("icons/stand"+i+".svg"));
    }
    for (int i = 1; i <= 4; i++){
      wheelIcons.add(loadShape("icons/wheel"+i+".svg"));
    }
    for (int i = 1; i <= 2; i++){
      merryIcons.add(loadShape("icons/merry"+i+".svg"));
    }
    //fWheel = loadShape("icons/wheel1.svg");
    //coaster = loadShape("icons/coaster1.svg");
    //stand = loadShape("icons/stand1.svg");
    
    //setup game mechanics
    money = 3000;
    level = 0;
    //setup random
    r = new Random();
    //setup delay
    lastTime = millis();
    wait = r.nextInt(5) * 1000;

  }
 
  // Main draw loop
  void draw() {
    level = attractionlevel/50 + 1;
    attractionlevel = att.size()*10 - b.size() ;
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
    
    //grid
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
    
    //Attraction boxes
      //rollercoaster box
    rect(0, 600, 250, 100);
      //stand box
    rect(250, 600, 250, 100);
      //merry go round box
    rect(0, 700, 250, 100);
      //ferris wheel box
    rect(250, 700, 250, 100);
    
    //level box
    rect(500, 700, 250, 100);
    //janitor box
    rect(500, 600, 250, 100);
    //attractionlevel box
    rect(750, 600, 250, 100);
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
    text("Ferris Wheel",375,750);
    text("Merry Go Round", 125, 750);
    text("Janitor", 625, 650);
    
    text("Money: " + money, 875, 750);
    text("Attraction Level: " + attractionlevel, 875, 650);
    text("Level:" + level, 625, 750);
    
    fill(255,255,255);
    rect(450,560,100,40);
    shapeMode(CENTER);
    for(int i = 0;i<rc.size();i++){
      shape(rc.get(i).getShape(),rc.get(i).getX(),rc.get(i).getY(),50, 50);
    }
    for(int i = 0;i<s.size();i++){
      
      shape(s.get(i).getShape(),s.get(i).getX(),s.get(i).getY(),50,50);
    }
    for(int i = 0;i<fw.size();i++){
      shape(fw.get(i).getShape(),fw.get(i).getX(),fw.get(i).getY(),50,50);
    }
    for(int i = 0;i<m.size();i++){
      shape(m.get(i).getShape(),m.get(i).getX(),m.get(i).getY(),50,50);
    }
    for(int i = 0; i<b.size();i++){
      fill(222,184,135);
      int barfx = b.get(i).getX();
      int barfy = b.get(i).getY();
      triangle(barfx,barfy,barfx + 10,barfy,barfx + 5,barfy + 10);
    }
    stroke(0,0,0);
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
    stroke(255,255,255);
    for(int i = 0;i<p.size();i++){
      fill(0,0,0);
      ellipse(p.get(i).getX(),p.get(i).getY(),10.0,10.0);
      
      
      Attraction a1 = att.get(r.nextInt(att.size()));

      // if person has no money to ride or rode everything
      if (p.get(i).getNewToPark()){
        p.get(i).chooseAttraction(a1);
      }else if (p.get(i).getMoney() < p.get(i).getAttraction().getCost() || att.size() == p.get(i).getUsedSize()){
         p.get(i).moveToEntrance();
      }else{
        //then choose attraction and move to it
        p.get(i).chooseAttraction(a1);
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
    if (mouseX>500 && mouseX<750 && mouseY>600 && mouseY<700){
      jButtonPressed = true;
    }
    if (mouseX>250 && mouseX<500 && mouseY>700 && mouseY<800){
      fwButtonPressed = true;
    }
    if (mouseX>0 && mouseX <250 && mouseY>700 && mouseY <800) {
      println("Release to place Merry Go Round");
      mButtonPressed = true;
    }
  }
  void mouseReleased(){
    if (mouseY<550){
      if(rcButtonPressed){
        
        Rollercoaster r1 = new Rollercoaster(mouseX, mouseY, coasterIcons.get(r.nextInt(coasterIcons.size())));
        if (money >= 500){
          money -= 500;
          rc.add(r1);
          att.add(r1);
        }else{
          println("you're poor");
        }     
      } 
      if(sButtonPressed){
        
        Stand s1 = new Stand(mouseX, mouseY,standIcons.get(r.nextInt(standIcons.size())));
        if(money >= 100){
          money -= 100;
          s.add(s1);
          att.add(s1);
        }else{
          println("you're very poor");
       // println("RELEASE WORKED");
        }
      }
      if(fwButtonPressed){
        ferrisWheel f1 = new ferrisWheel(mouseX,mouseY,wheelIcons.get(r.nextInt(wheelIcons.size())));
        if(money >= 500){
          money -= 500;
          fw.add(f1);
          att.add(f1);
        }else{
          println("you're poor");
        }
        
      }
      if(mButtonPressed){
        MerryGoRound m1 = new MerryGoRound(mouseX,mouseY,merryIcons.get(r.nextInt(merryIcons.size())));
        if(money >= 500){
          money -= 500;
          m.add(m1);
          att.add(m1);
          
        }else{
          println("you're poor");
        }
        
      }
      if(jButtonPressed){
        Janitor j1 = new Janitor(mouseX,mouseY);
        if (money >= 200){
          money -= 200;
          j.add(j1);
        }else{
          println("you're really poor");
        }
      }
    }
    rcButtonPressed = false;
    sButtonPressed = false;
    fwButtonPressed = false;
    jButtonPressed = false;
    mButtonPressed = false;
  }
   



 