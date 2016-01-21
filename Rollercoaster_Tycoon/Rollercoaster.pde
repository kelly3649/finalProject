class Rollercoaster{
  int intensity;
  int cost;
  int rwidth;
  int xcor,ycor;
  boolean ridden;
  

  Rollercoaster(int xcor,int ycor,int rwidth){
    this.xcor = xcor;
    this.ycor = ycor;
    this.rwidth = rwidth;
    intensity = rwidth/20;
    cost = intensity * 5;
    ridden = false;
  }

/*boolean getRidden(){
  return ridden;
}
void setRidden(){
  ridden = true;
}*/
  int getIntensity(){
    return intensity;
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