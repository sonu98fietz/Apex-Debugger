public class AccountHandler {
    
    public static void updateAccountNumbers(Map<Id, Account> newAccounts, Map<Id, Account> oldAccounts) {
        
        String dummy = 'siva';
                
        for(Account acc : newAccounts.values()){

            if(acc.AccountNumber != oldAccounts.get(acc.id).AccountNumber){

                acc.AccountNumber = dummy;

            }

        }
    }
    
}