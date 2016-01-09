import java.util.*;
public class person{
    public int canHandle;
    public int money;
    public boolean ate;
    public person(){
	Random r = new Random();
	canHandle = r.nextInt(10) + 1;
	money = (r.nextInt(10) + 1) * 10; 
	ate = false;a
    }
    
    public person(boolean canHandle, int money, boolean ate){
	this.canHandle = canHandle;
	this.money = money;
	this.ate = ate;
    }

    public boolean canRide(Rollercoaster r){
	if(r.getIntensity>canHandle){
	    return false;
	}
	return true;
    }

    public boolean puke(){
	return true;
    }
}
