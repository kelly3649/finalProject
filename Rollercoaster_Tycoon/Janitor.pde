class Janitor{
  int cost;
  int xcor,ycor;
  
  Janitor(int X, int Y){
    cost = 500;
    xcor = X;
    ycor = Y;
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
}