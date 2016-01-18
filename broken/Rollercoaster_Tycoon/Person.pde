import java.util.*;
class Person{
  int canHandle;
  int money;
  boolean ate;
  int xcor;
  int ycor;
  boolean choseSomething;
  Attractions x;
  
  Person(){
    Random r = new Random();
    xcor = 500;
    ycor = 550;
    canHandle = r.nextInt(10) + 1;
    money = (r.nextInt(10) + 1) * 5;
    ate = false;
    choseSomething = false;
  }
  Person(int canHandle, int money, boolean ate){
    this.canHandle = canHandle;
    this.money = money; //
    this.ate = ate;
    choseSomething = false;
    xcor = 500;
    ycor = 550;
  }
  
  void chooseSomething(Attractions x1){
    if (!choseSomething){
      x = x1;
      choseSomething = true; 
    }
  }
    
  boolean moveToSomething(){
    //println("moving to rollercoaster");
    int destX = x.getX();
    int destY = x.getY();
    
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
      money -= x.getCost(); //dont put in rollercoaster_tycoon
      choseSomething = false;
      return true;
    }
    return false;
  }
  
  

  void moveToEntrance(){
   // println("moving to entrance");
    choseSomething = true;
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
    return x;
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
  void setX(int a){
    xcor = xcor + a;
  }
  void setY(int a){
    ycor = ycor + a;
  }  
}