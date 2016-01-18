import java.util.*;
class Person{
  int canHandle;
  int money;
  boolean ate;
  int xcor;
  int ycor;
  boolean choseRollercoaster;
  Rollercoaster r1;
  
  Person(){
    Random r = new Random();
    xcor = 500;
    ycor = 550;
    canHandle = r.nextInt(10) + 1;
    money = (r.nextInt(10) + 1) * 5;
    if (r.nextInt(2) == 0){
      ate = false;
    }else{
      ate = true;
    }
    choseRollercoaster = false;
  }
  Person(int canHandle, int money, boolean ate){
    this.canHandle = canHandle;
    this.money = money; //
    this.ate = ate;
    choseRollercoaster = false;
    xcor = 500;
    ycor = 550;
  }
  
  void chooseRollercoaster(Rollercoaster r){
    if (!choseRollercoaster){
      r1 = r;
      choseRollercoaster = true;
    }
  }
    
  boolean moveToRollercoaster(){
    //println("moving to rollercoaster");
    int destX = r1.getX();
    int destY = r1.getY();
    
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
      ride(); //dont put in rollercoaster_tycoon
      choseRollercoaster = false;
      return true;
    }
    return false;
  }
  
  void ride(){
    money -= r1.getCost();
  }
  
  void moveToEntrance(){
   // println("moving to entrance");
    choseRollercoaster = true;
    Rollercoaster entrance = new Rollercoaster(500,590,0);
    r1 = entrance;
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
  
    
  
  int getX(){
    return xcor;
  }
  int getY(){
    return ycor;
  }
  int getMoney(){
    return money;
  }
  boolean getEat(){
    return ate;
  }
  void notEat(){
    ate = false;
  }
  void setX(int a){
    xcor = xcor + a;
  }
  void setY(int a){
    ycor = ycor + a;
  }  
}