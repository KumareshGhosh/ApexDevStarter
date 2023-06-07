public class constructorPrac {
    public constructorPrac(){
        system.debug('Constructor practise starts: calculating age');
    }
    public integer year;
    public constructorPrac(integer year){
        this(); //calling the first constructor firsts
        //year = year; //error will occur while call below method: System.NullPointerException: Attempt to de-reference
        // a null object becuase here 'year' refers to the constructor parameter.
        this.year = year; //this refers to the variable exist in the instance of the class,initializing a input in 
        //constructor and intializing a class variable here:  "'year' outside the constructor".
    }
    public string ageDetection(string name,integer birthYear){
        integer age =year- birthYear;
        return (name+ ' is '+ age +' year\'s old');
    }
    public integer count=0;
    //creating intance in method inside parent class:
    public class againPrac{
        string game;
        integer run;
        string player;
        againPrac(string name,integer score,string gameName){
            this.game=gameName;
            this.run=score;
            this.player=name;
        }        
    }
    public string checkRun(string bigPlayer,integer scorefuck,string bigGame){
        string details;
        againPrac nice= new againPrac(bigPlayer,scorefuck,bigGame);//variables names must be same as function parameter
        //otherwise function input will not understand variables when creates new instance of the child classs.
        count++;
        system.debug(count);
        //newly created instance(nice) now can call the actual child class(againPrac) variables(game,run,player).
        details=(nice.player+' has played '+nice.game+ ' and made '+nice.run+ ' run');
        return details;
    }
}