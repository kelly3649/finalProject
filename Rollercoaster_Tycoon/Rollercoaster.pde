class Rollercoaster{
  int intensity;
  int cost;
  
  Rollercoaster(int intensity){
    this.intensity = intensity;
    cost = intensity * 5;
  }
  
  int getIntensity(){
    return intensity;
  }
  int getCost(){
    return cost;
  }
  
  
}
