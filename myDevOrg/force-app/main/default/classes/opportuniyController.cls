public class opportuniyController {
    public static void profileMaker(list<id> idLists){
        list<opportunity> ops = [Select id,amount,profile__C from opportunity where id IN:idLists];
        for(opportunity opps :ops){
            //Add profile records:
            if(opps.amount<=10000){
             	opps.profile__C ='Low';   
            }else if(opps.amount >=50000 ){
                opps.profile__C ='High';   
            }else if(opps.amount>10000 && opps.amount<50000){
                opps.profile__C ='Medium';   
            }else{
                opps.profile__c ='low';
            }            
        }
        update ops;
    }
}