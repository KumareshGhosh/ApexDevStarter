//parent class college, different child class will be there,child classes: streams.
//streams(ECE,CSC,IT) will have total number of subjects,strudent name,his percentage,his CGP. 
//parent classes will have percentage details, CGP details and personal details(all details together).
//percentage: 
public class College {
	public string collegeName;
    public integer birthYear;
    public College(string name,integer year){
        this.collegeName=name;
        this.birthYear=year;   
    }
    
    //creating list to add all streams together
    list<Departments> streams = new list<Departments> ();
    //creating departments(child classes)
    private class Departments{
        public decimal cgp;
         public decimal percentage;
        public string department;
         public integer year;
        public string studentName;
        Departments(integer noSubjects,integer totalMarks,string name,string department,integer year){
            this.department=department;
            this.studentName = name;
            this.year=year;
            this.percentage = (totalMarks/noSubjects);
            this.cgp= (percentage/9.5);
        }         
                 
    }
    //add new streams 
    public void addingStreams(integer noOfSubjects,integer totalMarks,string studentName,string departmentName,integer passingYear){
        Departments sub = new Departments(noOfSubjects,totalMarks,studentName,departmentName,passingYear);
        streams.add(sub);
    }
    //printing percentage:
    public string percents(){
        string per;
        for(Departments sub:streams){            
        per=(sub.studentName +' from '+collegeName+' established in '+birthYear+' has scored '+sub.percentage+' %  . He is from '+sub.department+' with passing year of '+sub.year);
            }
        return(per);
    }
    //printing cgp:
    public string cgpi(){
        string c;
        for(Departments sub :streams){
            c=(sub.studentName +' \'s CGPI is '+sub.cgp);
       }
        return c;
    }
}