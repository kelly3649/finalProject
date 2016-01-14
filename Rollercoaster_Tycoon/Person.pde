import java.util.*;
class Person{
  int canHandle;
  int money;
  boolean ate;
  double xcor;
  double ycor;
  
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
  }
  
  boolean ride(Rollercoaster r){
    if (canHandle >= r.getIntensity() && money >= r.getCost()){
      money = money - r.getCost();
      return true;
    }
    return false;  
  }
  
  
  
}