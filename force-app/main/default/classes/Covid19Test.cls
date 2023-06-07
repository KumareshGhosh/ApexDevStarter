@isTest
public class Covid19Test {
	@isTest
    public static void FirstTest(){
        Covid19 bangalore = new Covid19(10);
        //test arial count match or not:
        system.assertEquals(10, bangalore.recoveredInArea, 'Hyderabad Arial count does not match');
        //country recovered count test:
        Covid19 kolkata = new Covid19(120);
        kolkata.getTreated();
        //checking for kolkata:
        system.assertEquals(121, kolkata.recoveredInArea, 'Wrong recovered count in Kolkata,Mamata fraud');
        //checking for country:
        system.assertEquals(131,Covid19.recoveredInCountry,'Wrong data for overall country,reason: Modi fraud');
        //testing arial treatment function also
        Covid19 mumbai = new Covid19(30);
        mumbai.arialTreatment();//increasing count by 1 
        system.assertEquals(31, mumbai.recoveredInArea, 'Mumbai Arial count does not match');
        //country count does not increase as per arialTreatment method statements:
        system.assertEquals(161,Covid19.recoveredInCountry,'Wrong data for overall country,reason: Modi fraud');
    }
    @istest
    //negative value test
    public static void secondTest(){
        Covid19 chennai = new Covid19(-30);
        system.assert(chennai.recoveredInArea == 0,'Negative count impossible');
    }
}