import java.util.*;
class Person{
  int canHandle;
  int money;
  boolean ate;
  float xcor;
  float ycor;
  boolean choseRollercoaster;
  Rollercoaster r1;
  
  Person(){
    Random r = new Random();
    xcor = 500;
    ycor = 550;
    canHandle = r.nextInt(10) + 1;
    money = (r.nextInt(10) + 1) * 100;
    ate = false;
    choseRollercoaster = false;
  }
  Person(int canHandle, int money, boolean ate){
    this.canHandle = canHandle;
    this.money = money; //
    this.ate = ate;
    choseRollercoaster = false;
  }
  
  void chooseRollercoaster(Rollercoaster r){
    if (!choseRollercoaster){
      r1 = r;
      choseRollercoaster = true;
    }
  }
    
    
  
  void move(){
    Random r = new Random();
    float destX = r1.getX();
    float destY = r1.getY();
    
    if (xcor != destX || ycor != destY){
      if (xcor - destX > 0){
        xcor --;
      }else{
        xcor ++;
      }
      if (ycor - destY > 0){
        ycor --;
      }else{
        ycor ++;
      }
    }
    
    ride(r1);

       
  }
  
  float getX(){
    return xcor;
  }
  float getY(){
    return ycor;
  }
  int getMoney(){
    return money;
  }
  void setX(float a){
    xcor = xcor + a;
  }
  void setY(float a){
    ycor = ycor + a;
  }
  
  boolean ride(Rollercoaster r){
    boolean samecoordinates = (r.getX() == xcor && r.getY() == ycor);
    if (canHandle >= r.getIntensity() && money >= r.getCost() && samecoordinates){
      money = money - r.getCost();
      println("Person rode rollercoaster");
      
      //ride new rollercoaster
      choseRollercoaster = false;
      return true;
    }
    choseRollercoaster = false;
    //movetoentrance
    return false;
  }
  void moveToEntrance(){
      //500,590 is the entrance coordinates
      if (xcor != 500 || ycor != 590){
        if (xcor - 500 > 0){
          xcor --;
        }else{
          xcor ++;
        }
        if (ycor - 590 > 0){
          ycor --;
        }else{
          ycor ++;
        }
      }
    
  }
  
  
  
}