class Rollercoaster extends Attraction{
  int intensity;
  int cost;
  int rwidth;
  int xcor,ycor;
 

  Rollercoaster(int xcor,int ycor,int rwidth){
    this.xcor = xcor;
    this.ycor = ycor;
    this.rwidth = rwidth;
    cost = rwidth/20 * 5;
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
  int getrwidth(){
    return rwidth;
  }
  
}