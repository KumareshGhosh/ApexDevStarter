public class practise{
    
    public static set<integer> setP(integer x){
        set<integer> a= new set<integer> {};
        do{       
           
           a.add(100);
            x++;
                
        }while(x<=5);
         return a;
       
    }
    public integer state=0;
    public static integer countryCount=0;
    
   public void westBengal(){
        state++;
        countryCount++;
   }
   public void gujrat(){
        state++;
        countryCount++;
        system.debug('Practise started');
   }
   public void sikim(){
        state++;
        countryCount++;
   }
   public static void countryTest(){
       countryCount++;
   }
}