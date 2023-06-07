public class justTest {
	//list<SObject> acc = [select name,Email_Details__c ,(select name,Type__c  from books__r)from author__c];
    public static void getParentChildTogether(){
    for(SObject writter : [select name,Email_Details__c ,(select name,Type__c  from books__r)from author__c]){
        for(SObject boi: writter.getSObjects('books__r')){
            system.debug('Author\'s name : '+writter.get('Name')+' Author\'s emailAddress : '+writter.get('Email_Details__c')+' ,Author\'s book Names and types: '+boi.get('name')+': ' +boi.get('Type__c'));
        }
        }
    }
}