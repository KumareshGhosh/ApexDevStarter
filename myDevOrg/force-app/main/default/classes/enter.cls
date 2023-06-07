public class enter {
    //print newly added contacts only
    public static void main(list<contact> contactList){
        insert contactList;
        for(Contact cons : contactList){
            system.debug('New Contacts Last Name: '+cons.lastName);
        }
    }
    //get all contacts together
    public static void main2(){
        list<Contact> contacts =[Select id,name from Contact];
        for(Contact con: contacts){
            system.debug('New Contacts Last Name: '+con.name);
        }
    }
}