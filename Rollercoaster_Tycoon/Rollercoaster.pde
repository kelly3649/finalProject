class Rollercoaster{
  int intensity;
  int cost;
  int xcor,ycor;
  
  Rollercoaster(int xcor,int ycor,int rwidth, int intensity){
    this.intensity = intensity;
    this.xcor = xcor;
    this.ycor = ycor;
    cost = intensity * 5;
  }
  Rollercoaster(int xcor,int ycor,int rwidth){
    this.xcor = xcor;
    this.ycor = ycor;
    cost = intensity * 5;
  }

  
  int getIntensity(){
    return intensity;
  }
  int getCost(){
    return cost;
  }
  int getX(){
    return X;
  }
  int getY(){
    return Y;
  }
  
  
}