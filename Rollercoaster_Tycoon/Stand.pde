class Stand extends Attraction{
  int xcor, ycor;
  int cost;
  int swidth;
  
  Stand(int xcor,int ycor,int swidth){
    this.xcor = xcor;
    this.ycor = ycor;
    this.swidth = swidth;
    cost = 1;
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