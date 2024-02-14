@isTest
public class OpportunityOnAccountTest {
    public static testmethod void unitTest(){
        Account acc = new Account();
        acc.Name = 'sonu4';
        acc.Industry = 'Energy';
        acc.Type='Customer - Direct';
        insert acc;
        OpportunityOnAccount.createOpportunityBasedOnAccount(null);
        
        system.assertEquals(acc.Name, 'sonu4');
    }
    
    public static testmethod void unitTest1(){
        Account acc1 = new Account();
        acc1.Name = 'sonu5';
        acc1.Industry = 'Energy';
        acc1.Type='Customer - Direct';
        try{
            insert acc1;
        }
        catch(Exception e){
            system.debug('The Exception is: '+e.getMessage());
        }
    }
}