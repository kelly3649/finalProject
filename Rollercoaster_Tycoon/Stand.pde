class Stand{
  int xcor, ycor;
  int cost;
  int swidth;
  
  Stand(int xcor,int ycor,int swidth){
    this.xcor = xcor;
    this.ycor = ycor;
    this.swidth = swidth;
    cost = swidth * 5;
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
  int getswidth(){
    return swidth;
  }
}