import java.util.*;
class Person{
  int money;
  boolean ate;
  boolean queasy;
  int xcor;
  int ycor;
  boolean choseAttraction;
  Attraction a1;
  ArrayList<Attraction> used = new ArrayList<Attraction>();
  
  
  Person(){
    Random r = new Random();
    xcor = 500;
    ycor = 550;
    money = (r.nextInt(10) + 1) * 5;
    if (r.nextInt(2) == 0){
      ate = false;
    }else{
      ate = true;
    }
    queasy = false;
    choseAttraction = false;
  }
  
  void chooseAttraction(Attraction a){
    if (!choseAttraction){
      if (!used.contains(r)){
        a1 = a;
        choseAttraction = true;
      }
      
    }
  }

  


  boolean moveToAttraction(){
    //println("moving to rollercoaster");
    if (choseAttraction){
      int destX = a1.getX();
      int destY = a1.getY();
    
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
        money -= a1.getCost(); //dont put in rollercoaster_tycoon
        
        //check attraction type
        if (a1 instanceof Rollercoaster){
          if (ate){
            queasy = true;
          }
        }else if(a1 instanceof Stand){
          ate = true;
        }
        
        //after riding, allow for Rollercoaster_Tycoon to 
        //  choose new attraction
        choseAttraction = false;
        
        //prevent Person from choosing something it chose 
        //  before
        used.add(a1);
        
        //return true so that the player can get money
        // in Rollercoaster_tycoon
        return true;
      }
    }
    return false;
  }
  

  
  boolean moveToEntrance(){
   // println("moving to entrance");
   
   //stop person from choosing new attraction
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
      }else{
        return true;
      }
      return false;
      
      
    
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
  boolean getQueasy(){
    return queasy;
  }
  int getUsedSize(){
    return used.size();
  }
  void notEat(){
    ate = false;
    queasy = false;
  }
  void setX(int a){
    xcor = xcor + a;
  }
  void setY(int a){
    ycor = ycor + a;
  }  
}