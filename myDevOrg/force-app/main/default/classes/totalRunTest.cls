@isTest
public class totalRunTest {
    @isTest
    public static void main(){
        totalRun rohit = new totalRun();
        totalRun.mendu(100);
        system.assert((totalRun.soumendu==100 && totalRun.match==1),'wrong scorecard');  
        rohit.kumaresh();
        system.assertEquals(90, rohit.tatai);
        rohit.abhjit();
        system.assertEquals(50, rohit.pappu);
    }
}