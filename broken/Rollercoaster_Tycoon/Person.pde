import java.util.*;
class Person{
  int canHandle;
  int money;
  boolean ate;
  boolean queasy;
  int xcor;
  int ycor;
  boolean choseAttraction;
  Attractions x1;
  ArrayList<Attractions> ridden = new ArrayList<Attractions>();
  
  Person(){
    Random r = new Random();
    xcor = 500;
    ycor = 550;
    canHandle = r.nextInt(10) + 1;
    money = (r.nextInt(10) + 1) * 5;
    ate = false;
    choseAttraction = false;
  }
  Person(int canHandle, int money, boolean ate){
    this.canHandle = canHandle;
    this.money = money; //
    this.ate = ate;
    choseAttraction = false;
    xcor = 500;
    ycor = 550;
  }
  
  void chooseAttraction(Attractions x){
    if (!choseAttraction){
      if (!ridden.contains(x)){
        x1 = x;
        println("chose attraction");
        choseAttraction = true; 
      }
    }
  }

    
  boolean moveToAttraction(){
   if (choseAttraction){
      //println("moving to rollercoaster");
      int destX = x1.getX();
      int destY = x1.getY();
      
      if (xcor != destX){
        if (xcor - destX > 0){
          xcor --;
        }else{
          xcor ++;
        }
      }else if (ycor != destY){    
        if (ycor - destY > 0){
          ycor --;   
        }else{
          ycor ++;
        }
      }
      
      else{
        println("aaa");
        money -= x1.getCost(); //dont put in rollercoaster_tycoon
        if (x1 instanceof Rollercoaster){
          if (ate){
            queasy = true;
          }
        }else if(x1 instanceof Stand){
          ate = true;
        }
          
        choseAttraction = false;
        ridden.add(x1);
        return true;
      }
   }
    return false;
  }
  
  

  void moveToEntrance(){
   // println("moving to entrance");
    choseAttraction = true;
      //500,590 is the entrance coordinates
      if (xcor != 500){
        if (xcor - 500 > 0){
          xcor --;
        }else{
          xcor ++;
        }
      }else if (ycor != 590){
        if (ycor - 590 > 0){
          ycor --;
        }else{
          ycor ++;
        }
      }
      
    
  }
  
    
  Attractions getAttraction(){
    return x1;
  }
  
  int getX(){
    return xcor;
  }
  int getY(){
    return ycor;
  }
  int getMoney(){
    return money;
  }
  boolean getQueasy(){
    return queasy;
  }
  boolean getEat(){
    return ate;
  }
  boolean choseAttraction(){
    return choseAttraction;
  }
  void setX(int a){
    xcor = xcor + a;
  }
  void notEat(){
    ate = false;
    queasy = false;
  }
  void setY(int a){
    ycor = ycor + a;
  }  
}