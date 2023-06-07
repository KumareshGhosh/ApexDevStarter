//parent class name Car
//shall have two methods to accelerate and brake and two methods to print current speed.
//ev car shall have a method to charge battery, shall print current speed with the method from parent class.
public class Car {
	public string brand;
    public integer curSpeed;
     public Car(string carBrand,integer v){
        this.brand=carBrand;
        this.curSpeed = v;
    }
    public string accelerate() {
        string accSpeed;
		curSpeed+=20;
        accSpeed=(brand +' going at '+curSpeed);
        return accSpeed;
	}
    public string brake() {
        string breakSpeed;
		curSpeed-=20;
        breakSpeed=(brand +' going at '+curSpeed);
        return breakSpeed;
	}
    public static string noChange(){
        string x;
        x=('There shall be no change in speed');
        return x;
    }
    private list <EVCL> chargeDetails = new list <EVCL> ();
    private  class EVCL{
       public  integer charge;
         EVCL(integer charge){
            this.charge=charge;
            
        }
    }    
        public void chargeBattery(integer chargeTo){
            EVCL ev= new EVCL(chargeTo);
            chargeDetails.add(ev);
            //system.debug(ev.charge)
        }
    public string speedWithChargeDetials(){
        //system.debug(chargeDetails);
        string ElectricDetails;
        for(EVCL ev : chargeDetails){
        ElectricDetails=(brand+' is going at '+curSpeed+' with the charge of '+ ev.charge+ '%');           
        }
         return ElectricDetails;
    }
}