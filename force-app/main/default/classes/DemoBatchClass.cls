global class DemoBatchClass implements Database.Batchable<sObject> {
    global Database.QueryLocator start(Database.BatchableContext bc){
        string soql = 'SELECT Id,Name FROM Account';
        return database.getQueryLocator(soql);
    } // 5000 Accounts
    
    //200 Accounts it can process max at a single time // 25 Times in order to Process 5000 Accounts
    global void execute(Database.BatchableContext bc, List<Account> newList){
       List<Account> lstAcc = new List<Account>();
        for(Account acc: newList){
            acc.Name = acc.Name+'---> Batch';
            lstAcc.add(acc);
        }
        if(lstAcc.size() > 0){
            update lstAcc;
        }
    }
    
    //POST Processing work done here 
    // Like create task to the owner saying job done or sending emails to the owner saying work done
    global void finish(database.BatchableContext bc){
        
    }
}