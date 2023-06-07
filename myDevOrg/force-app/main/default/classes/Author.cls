public class Author {
    static list<string> friends = new list<string>{'Sanju Laha','Soumend nandi'};
        //using friends as a bind variable below:
	static string detail = 'select name,email_details__c,(select name from books__r) from author__c where name in :friends';
    static list<author__C> lekhok = database.query(detail);
    public static void writter(){
        for(Author__c auth : lekhok){
            for(book__c boi: auth.books__r){
                system.debug('Author Name: '+auth.name+' ,Book names: '+boi.name);
            }
        }
    }
}