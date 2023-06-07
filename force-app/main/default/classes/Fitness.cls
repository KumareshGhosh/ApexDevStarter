public class Fitness {
    public string calculateBmi(string name,decimal h,decimal w){ //formula: weight/(height)^2
        if(h==0 || w==0){
            return 'Invalid height or weight';
         }else{
        decimal result = w/ (h*h);
        return (name+ ' has a calculated BMI of ' + result);
        }
    }
    public string calculatePace(string name,decimal t,decimal distance){//pace=km/hour
        if(t==0 || distance ==0){
            return 'No running so no pace exists.';
        }else{
        decimal paceInMint= (distance/t);
        decimal paceInHour = 60*paceInMint;
        return (name +' can run with a speed of '+paceInHour+' km/hour');
        }
    }
}