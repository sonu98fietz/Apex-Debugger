trigger DuplicateOnAccount on Account (before insert) {
    If(trigger.isInsert){
        If(trigger.isBefore){
            List<Account> acclist =new  List<Account>();
            acclist  = [select Name from Account];
            for(Account acc: acclist){
                for(Account accountnew:trigger.new){
                    if(accountnew.Name==acc.Name){
                        accountnew.addError('Account name already exist');
                    }
                }
            }
        }
    }
}