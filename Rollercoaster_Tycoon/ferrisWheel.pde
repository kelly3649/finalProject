class ferrisWheel extends Attraction{
  int xcor,ycor;
  int cost;
 
  
  ferrisWheel(int xcor,int ycor){
    this.xcor = xcor;
    this.ycor = ycor;
    cost = 10;
    
  }

  
  int getCost(){
    return cost;
  }
  int getX(){
    return xcor;
  }
  int getY(){
    return ycor;
  }
  
}