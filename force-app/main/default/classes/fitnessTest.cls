@isTest
public class fitnessTest {
    @isTest
    public static void main(){
        Fitness fuck = new Fitness();
        //testing bmi
        system.assertEquals('Tatai has a calculated BMI of 20', fuck.calculateBmi('Tatai',2,80));
        //testing pace
        system.assert(fuck.calculatePace('Tatai',10,1)=='Tatai can run with a speed of 6.0 km/hour','Wrong Pace');
       //Tatai can run with a speed of 6.0 km/hour
       
    }
    @isTest
    public static void testCase1(){
        Fitness first = new Fitness();
        decimal height=2;
        decimal weight=90;
        string result = first.calculateBmi('Tatai',height,weight);
        system.assertEquals('Tatai has a calculated BMI of 22.5',result,'Wrong BMI bitch');
       
    }
    @isTest
    //pace check
    public static void testCase2(){
        Fitness second = new Fitness();
        decimal t=10;
        decimal distance=1;
        string result = second.calculatePace('Tatai',t,distance);
        system.assertEquals('Tatai can run with a speed of 6.0 km/hour',result,'Wrong BMI bitch');
       
    }
    @isTest
    //pace check if input 0
    public static void testCase3(){
        Fitness third = new Fitness();
        decimal t=10;
        decimal distance=0;
        string result = third.calculatePace('Tatai',t,distance);
        system.assertEquals('Tatai can run with a speed of 6.0 km/hour',result,'Wrong BMI bitch');
       
    }
}