public class AccountControllerTest {

    public static void updateAvgCaseResolutionDays(list<Id> accountIds){
        map<id,integer> accountTotaolCaseMap = new map<id,integer>();
        map<id,integer> accountTotaolCaseDaysMap = new map<id,integer>();
        // retrive all the cases for this account
        // get resolution days for each account (ClosedDate - CreatedDate
        for(Case caseObj : [SELECT Id, CreatedDate, ClosedDate,AccountId
                             FROM Case
                             WHERE IsClosed=true
                            	AND AccountId IN: accountIds]){
            //check if account id is exist in maps or not,if not add them:
            if(!accountTotaolCaseMap.containsKey(caseObj.AccountId)){
                accountTotaolCaseMap.put(caseObj.AccountId,0);
                accountTotaolCaseDaysMap.put(caseObj.AccountId,0);
            }                        
            // increase number of cases
            integer totalCases = accountTotaolCaseMap.get(caseObj.AccountId);
            accountTotaolCaseMap.put(caseObj.AccountId,totalCases+1);
            // get duration in days and add it to totalDays
            integer totalDays = accountTotaolCaseDaysMap.get(caseObj.AccountId);
            accountTotaolCaseDaysMap.put(caseObj.AccountId,totalDays+caseObj.CreatedDate.date().daysBetween(caseObj.ClosedDate.date()));
        }
        list<Account> accountToUpdate = new list<Account>();
        for(ID ids: accountTotaolCaseMap.keySet()){
        Decimal resolutionDays = accountTotaolCaseDaysMap.get(ids)/accountTotaolCaseMap.get(ids);
        // update account object
        accountToUpdate.add(new Account(Id=ids, Avg_case_roslution__c= resolutionDays));
        }
        update accountToUpdate;
    }
}