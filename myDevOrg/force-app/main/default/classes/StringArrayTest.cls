public class StringArrayTest{
    public static list<string> generateStringArray(integer x){
        list <string> test = new list<string> {};
        for(integer i=0;i<10;i++){
            test.add('Test '+ i);
            if (x==i){
              break;  
            }
        }
        return test;
    }


}