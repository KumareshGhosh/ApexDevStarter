public class insertionPractice {
    static string  contactInfo = 'SELECT Account.name, Account.rating,name,department,title,(SELECT CaseNumber, Subject, IsClosed FROM Cases ) FROM Contact order by name';
    //general field details fetching
    public static void conInformationFetch(){
    list <contact> con = database.query(contactInfo);
        for(Contact c : con){
            for(Case subs : c.cases){
            system.debug('Contact Names: '+c.name+' ,Contact\'s account name: '+c.Account.name+' ,Case number: '+subs.caseNumber);
            }
        }
    }
    //new house list creation
    public static list<House__c > houses = new list<House__c >();
    
    //method to add new houses in a list:
    public static void notunBari(){
   		 houses.add(new House__c(name='Kusarivaban'));
         houses.add(new House__c(name='Merry park vaban'));
         houses.add(new House__c(name='Kailshnagar Vaban'));
         houses.add(new House__c(name='Dhemna Vaban'));
    }
    
    //new houses insertions:
    public static list<house__C> newhouseEnter(list<house__C> anyBari){
        insert anyBari;
        return anyBari;
    }
    
    //return names:
    public static list<house__C> houseNamereturn(){
        list<house__c> bari = [select name from house__c];
        return bari;
    }
    
    //print returned names:
    public static void printHouseNames(){
        for(house__c bari: houseNamereturn()){
            system.debug('House Names: '+bari.name);
        }
    }
    
    //print new house object size:
    public static void getSize(){
        system.debug('Total house numbers: '+houseNamereturn().size());
    }
}