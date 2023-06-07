public class ageDetection{
    
    public string age(integer year){
        string x='';
       
        if(year>=1995){
            x+=('Agent\'s age is '+ year + ' so he/she is Child');
        }else{
            x+=('Agent\'s age is '+ year + ' so he/she is Adult');
        }
        return x;
         
    }
    public  string age(){ //Method overloading
       string x='Hi guys';
       return x;
    }
    public static void newAccount(){
        SObject accountCreation = (SObject)Type.forName('Account').newInstance();
        accountCreation.put('Name','Amr babar company');
        accountCreation.put('Rating','Warm');
        insert accountCreation;
        }
    public static void newOpps(){
        SObject myAccount = Database.query('Select id,name from Account where name=\'Amr babar company\' limit 1');
        SObject oppCreation = (SObject)Type.forName('Opportunity').newInstance();
        oppCreation.put('name','Biraat sujog');
        oppCreation.put('StageName','Prospecting');
		oppCreation.put('AccountId',myAccount.id);
        oppCreation.put('closeDate',date.today());
        insert oppCreation;
    }
    //update account name:
    public static void updateAccount(){
        SObject myCreation =Database.query('Select id,name from Account where name=\'Amr babar company\'');
        myCreation.put('name','Menduk dilam company');
        myCreation.put('Rating','Cold');
        database.update(myCreation);
    }
    //update opportunity name:
    public static void updateOpps(){
        SObject myOpps = Database.query('Select id,name from Opportunity where name=\'Biraat sujog\'');
        myOpps.put('name','Choto sujog');
        myOpps.put('StageName','Qualification');
        database.update(myOpps);
    }
    //delete opportunity:
    public static void deleteOpps(){
        SObject myOpps = Database.query('Select id,name from Opportunity where name=\'Choto sujog\' limit 1' );
        delete myOpps;
    }
    //undelete opportunity:
    public static void undeleteOpps(){
        list<SObject> myOpps = database.query('Select id,name,stageName from Opportunity where name=\'Choto sujog\' AND isdeleted = true ALL ROWS');
        undelete myOpps;                                       
    }
    //undelete previous accounts
    public static void undeleteAcc1(){
        list<SObject> Acc1 = database.query('Select id,name from Account where name IN(\'New Line Cinema\',\'WingNut Films\') AND isdeleted = true ALL ROWS');
        undelete Acc1;  
            }
    
}