public class OpportunityOnAccount {
    Public static void createOpportunityBasedOnAccount(List<Account> newList){
        if(newList == null){
            return;
        }
        List<Opportunity> lstOpp = new List<Opportunity>();
       
            for(Account acc : newList){
                if(acc.Industry=='Energy' && acc.Type=='Customer - Direct'){
                Opportunity opp = new Opportunity();
                opp.Name = 'Demo Opp trigger'+ acc.Name;
                opp.AccountId = acc.Id;
                opp.StageName = 'Prospecting';
                opp.CloseDate = Date.today().addDays(1);
                lstOpp.add(opp);
            }
        }
        if(lstOpp.size() > 0){
            insert lstOpp;
        }
    }
}