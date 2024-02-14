public class AccountListController {

    @auraEnabled
    public static List<Account> fetchAccounts(){
        List<Account> lstAcc = [Select id,Name,phone from Account];
        return lstAcc;
    }
}