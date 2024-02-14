global class AccountRevenueOpps implements Database.Batchable<SObject>{

    global  Database.QueryLocator start(Database.BatchableContext bc){
        string soql ='select id,Name from Account where AnnualRevenue>50000';
        return database.getQueryLocator(soql);
    }
    global void execute(Database.BatchableContext bc,List<Account> accList){
       List<Opportunity> Opplist = new  List<Opportunity>();
        for(Account acc: acclist){
            Opportunity opp = new Opportunity();
            opp.Name=acc.Name;
            opp.AccountId=acc.Id;
            opp.Type='New Customer';
            opp.StageName='Prospecting';
            opp.CloseDate=System.today();
            Opplist.add(opp);
        }
        try{
            Insert Opplist;
        }Catch(Exception e){
            System.Debug(e);
        }
    }
    global void finish(Database.BatchableContext bc){
        
    }
}