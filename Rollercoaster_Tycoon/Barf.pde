class Barf{
  int xcor, ycor;
  boolean chosen;
  Barf(int X, int Y){
    xcor = X;
    ycor = Y;
  }
  int getX(){
    return xcor;
  }
  int getY(){
    return ycor;
  }
  boolean getChosen(){
    return chosen;
  }
  void setChosen(){
    chosen = true;
  }
  
}