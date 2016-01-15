import java.util.*;
class Person{
  int canHandle;
  int money;
  boolean ate;
  float xcor;
  float ycor;
  
  Person(){
    Random r = new Random();
    xcor = 500;
    ycor = 550;
    canHandle = r.nextInt(10) + 1;
    money = (r.nextInt(10) + 1) * 100;
    ate = false;
  }
  Person(int canHandle, int money, boolean ate){
    this.canHandle = canHandle;
    this.money = money; //
    this.ate = ate;
  }
  void move(){
    //1 2 3 4 for parameter direction 
    //1 = up, 2 = down, 3 = left, 4 = right
    //if(direction == 1){
    //}
    Random r = new Random();
    float  a = (r.nextInt(3) - 1) / 10;
    xcor += a;
  }
  float getX(){
    return xcor;
  }
  float getY(){
    return ycor;
  }
  void setX(float a){
    xcor = xcor + a;
  }
  void setY(float a){
    ycor = ycor + a;
  }
  
  boolean ride(Rollercoaster r){
    if (canHandle >= r.getIntensity() && money >= r.getCost()){
      money = money - r.getCost();
      return true;
    }
    return false;  
  }
  
  
  
}