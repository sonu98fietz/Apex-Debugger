public class AccountTriggerHandler {

    Public static void cloneMasterAccount(List<Account> newList){
        if(newList[0].Is_Main_Record__c == true){
            
            insert new Account(Name = 'Test',NumberOfEmployees = newList[0].NumberOfEmployees);
            //newList[0].adderror('New record created');
        }
    }
}