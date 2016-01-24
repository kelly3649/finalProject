class ferrisWheel extends Attraction{
  int intensity;
  int cost;
  int fwwidth;
  int xcor,ycor;
 
  
  ferrisWheel(int xcor,int ycor,int fwwidth){
    this.xcor = xcor;
    this.ycor = ycor;
    this.fwwidth = fwwidth;
    cost = fwwidth/20 * 5;
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
  int getfwwidth(){
    return fwwidth;
  }
  
}