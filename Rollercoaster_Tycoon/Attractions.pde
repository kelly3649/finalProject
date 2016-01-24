class Attraction{
  int xcor, ycor;
  int cost;
  PShape shape;
  Attraction(int xcor,int ycor, PShape shape){
    this.xcor = xcor;
    this.ycor = ycor;
    this.shape = shape;
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
  PShape getShape(){
    return shape;
  }
}
  