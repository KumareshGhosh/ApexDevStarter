@isTest
public class ageDetectiontest {
    @isTest
    public static void main(){
        ageDetection aging = new ageDetection();
        system.assert(aging.age(1990)== 'Agent\'s age is '+ 1990 + ' so he/she is Adult');
        system.assert(aging.age(2000)== 'Agent\'s age is '+ 2000 + ' so he/she is Child');
        system.assertEquals('Hi Guys', aging.age(),'Not a good way of greeting');//insertion error: expected 'Hi guys', got 'Hi Guys'
    }
    
}