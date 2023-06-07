public with sharing class ConAcc {
    public static void accountContactCreation(){
   Account acc = new Account(name='My Test Account');
   insert acc;
   id accountIDs = acc.id;
   Contact con=new Contact(lastname='Kumaresh',AccountID=accountIDs);
   insert con;
   Account a = [Select id,name,(select lastname from Contacts) from Account where id=:accountIDs];
    }
    
}