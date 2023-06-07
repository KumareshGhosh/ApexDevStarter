@isTest
public class constructorPracTest {
    @isTest
    public static void check(){
        constructorPrac old=new constructorPrac(2023);
        system.assertEquals(2023, old.year);
        //age detection method test
        system.assertEquals(('Kumaresh is 23 year\'s old'),old.ageDetection('Kumaresh',2000));
        //check run method test
        system.assertEquals(('Mendu has played Cricket and made 100 run'), old.checkRun('Mendu',100,'Cricket'));
    }
}