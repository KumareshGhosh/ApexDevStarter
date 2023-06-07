@isTest
public class greetTest {
    @isTest
    public static void testing(){
        greets g= new greets();
        system.assertEquals('Hello world',  g.methodGreet());
        system.assertEquals('Whats up fucker', g.wishes('Whats up fucker'));
        system.assertEquals('Sunday', g.getDate(1));
        system.assert(g.test()=='Tatai');
    }
}