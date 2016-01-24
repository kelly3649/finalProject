class Janitor{
  int cost;
  int xcor,ycor;
  boolean choseBarf;
  Barf b1;
  
  Janitor(int X, int Y){
    cost = 500;
    xcor = X;
    ycor = Y;
  }
  
  boolean chooseBarf(Barf b){
    if (!choseBarf){
      b1 = b;
      choseBarf = true;
      return true;
    }
    return false;
  }
    
  boolean moveToBarf(){
    if(choseBarf){
      int destX = b1.getX();
      int destY = b1.getY();
    
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
       choseBarf = false;
       return true;
      }
    }
    return false;
    
  }
  
    
  
  int getX(){
    return xcor;
  }
  int getY(){
    return ycor;
  }
  int getCost(){
    return cost;
  }
  Barf getBarf(){
    return b1;
  }
}