public class greets{
    private string greeting = 'Hello world';
    protected string greeting1 = 'Protecting hello world';
    public string greeting2='Publicly greeting';
    
    public string methodGreet(){
       //system.debug(greeting); //can not be accessable as defined as private
       return(greeting);
    }
    public string wishes(string greetDay){
        return(greetDay);
    }
    //print day number wise,eg: 1-sunday,2-monday..
    public string getDate(integer x){
    list<string> days = new list<string> {'Sunday','Monday','Tuesday','Wednesday','Thursday','Friday','Saturday'};
        string dayString =''; //to store the dates
        for(integer i=1;i<=days.size();i++){
            if(x==0){
                system.debug('Invalid requirement');
            }else if(x==i){            
                dayString+= days.get(i-1); //storing dates in daystring 
                //system.debug(dayString);            
         }
        }
        return( dayString); //returning daystring
       }
    public string test(){
    map<integer,string> employees = new map<integer,string>();
    	employees.put(1,'Tatai');
    employees.put(2,'Mendu');
    return(employees.get(1));
    }
    }