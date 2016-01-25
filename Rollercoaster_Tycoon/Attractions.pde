class Attraction{
  int xcor, ycor;
  int cost;
  PShape shape;
  int level;
  Attraction(int xcor,int ycor, PShape shape, int level){
    this.xcor = xcor;
    this.ycor = ycor;
    this.shape = shape;
    this.level = level;
  }

  int getLevel(){
    return level;
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
  