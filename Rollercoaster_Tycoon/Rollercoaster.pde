class Rollercoaster extends Attraction{
  Rollercoaster(int xcor,int ycor, PShape shape,int level){
    super(xcor, ycor, shape,level);
    cost = 10*level;
  }

  
  
}