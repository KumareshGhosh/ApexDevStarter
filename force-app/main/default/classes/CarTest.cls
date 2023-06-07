@isTest
public class CarTest {
    @isTest
    public static void carTest(){
        Car c=new Car('Scorpio',110);
        system.Assert(c.brand == 'Scorpio' && c.curSpeed==110);
        //accelarate test
        system.assertEquals('Scorpio going at 130', c.accelerate());
        //brake test
        system.assertEquals('Scorpio going at 110', c.brake());
        //normal speed
        system.assert(Car.noChange()== 'There shall be no change in speed');
    }
    @isTest
    public static void carTest2(){
         Car d=new Car('Hector',70);
        d.chargeBattery(100);
        //electric car details check:
        system.assertEquals(('Hector is going at 70 with the charge of 100%'),d.speedWithChargeDetials());
    }
}