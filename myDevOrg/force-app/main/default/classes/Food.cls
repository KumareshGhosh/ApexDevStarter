public class Food {
    final static integer oneSlice = 8;
    final static integer uptoThreeSlice = 7;
    final static integer moreThanThreeSlice = 6;
    public static void bill(string name,integer count){
        if(count==1){
            system.debug(name +' has to pay '+ oneSlice +'$');
        }else if(count <=3){
            system.debug(name +' has to pay '+ (count*uptoThreeSlice)+'$');
        }else{
            system.debug(name +' has to pay '+ (count*moreThanThreeSlice)+'$');
        }
    }
}