class Stand extends Attraction{
  int xcor, ycor;
  int cost;


  Stand(int xcor,int ycor){
    this.xcor = xcor;
    this.ycor = ycor;
    cost = 3;
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