public with sharing class final2 {
    public static void getAccounts(list<id> AccountIDs){
         Map<id,integer> allCasesMap = new Map<id,integer>();//two map created to store accountid and total case number + case days
         Map<id,integer> allcasesDaysMap = new Map<id,integer>();
        for(Case CaseObj : [SELECT Id, IsClosed, CreatedDate, ClosedDate, AccountId FROM Case Where IsClosed=True AND AccountId IN:AccountIDs]){
            //check if accountid already exist in maps,if not,include them
            if(!allCasesMap.containsKey(CaseObj.AccountId)){
                allCasesMap.put(CaseObj.AccountId,0);
                allcasesDaysMap.put(CaseObj.AccountId,0);
            }
            //calculate total cases for single account
            integer totalCases = allCasesMap.get(CaseObj.AccountId);
            allCasesMap.put(CaseObj.AccountId,totalCases+1);
            //calculate total days for the case:
            integer totalCaseDays = allcasesDaysMap.get(CaseObj.AccountId);
            allcasesDaysMap.put(CaseObj.AccountId,totalCaseDays+CaseObj.CreatedDate.date().daysBetween(CaseObj.ClosedDate.date()));
        }
        //create account list to add all accounts and update 
       List<Account> accountToUpdate = new List<Account>();
        for(id AccountID : allCasesMap.keySet()){
            //average days calculation:
            Decimal AvgCaseDays = allcasesDaysMap.get(AccountID)/allCasesMap.get(AccountID);
            accountToUpdate.add(new Account(id = AccountID,Avg_case_roslution__c=AvgCaseDays));
        }
        update accountToUpdate;
   }
}