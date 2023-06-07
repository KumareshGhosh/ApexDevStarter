//insertAccounts,insertAccount,getallAccounts,printallAccounts,getsizeofAccount
public class accountController {
	
    //insertAccounts:
    public static list<Account> insertAccounts(list<Account> accountListToInsert){
        database.insert(accountListToInsert,true);
        return accountListToInsert;
    }
    //insertAccount:
    public static Account insertAccount(Account accountToInsert){
 		insert accountToInsert;
        return accountToInsert;
    }
    //getallAccounts:
    public static list<account> getallAccounts(){
        list<Account> acc = [Select name,phone from Account];
        return acc;
    }
    //printallAccounts:
    public static void printallAccounts(){
        list<account> acc = getallAccounts();
        for(Account a: acc){
            system.debug('Account names: '+a.name+ ' ,Phone numbers: '+a.phone);
        }
    }
    //getsizeofAccount
    public static void getsizeofAccount(){
        system.debug(getallAccounts().size());
    }
 
}