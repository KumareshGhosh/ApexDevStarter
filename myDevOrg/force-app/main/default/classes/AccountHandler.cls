public class AccountHandler {
    public static Account insertNewAccount(string TestAccount){
        Account acc= new Account(name=TestAccount);
        try{
        insert acc;  
    }catch(DmlException e){
        return null;
    }
      return  acc; 
  }    
}