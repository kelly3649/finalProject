import java.util.*;
class person{
  int canHandle;
  int money;
  boolean ate;
  float x;
  float y;
  
  person(){
    Random r = new Random();
    canHandle = r.nextInt(10) + 1;
    money = (r.nextInt(10) + 1) * 100;
    ate = false;
  }
  person(int canHandle, int money, boolean ate){
    this.canHandle = canHandle;
    this.money = money;
    this.ate = ate;
  }
  
  boolean ride(Rollercoaster r){
    if (canHandle >= r.getIntensity() && money >= r.getCost()){
      money = money - r.getCost();
      return true;
    }
    return false;  
  }
  
  
  
}
