public class te1 {
    static list<string> days = new list<string>{'sunday','monday','tesuday','thursday'};
    public static void dateSelect(){
        for(string day: days){
            if(day =='sunday'){
                system.debug('Its meat time');
            }else if(day=='thursday'){
                system.debug('It\'s veg time');
            }
             system.debug('Loop out');
        }
       
    }
}