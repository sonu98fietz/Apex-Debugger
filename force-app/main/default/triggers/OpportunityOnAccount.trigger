trigger OpportunityOnAccount on Account (before Insert, after insert, before Update) {
    if(trigger.isAfter){
        if(trigger.isInsert){
            OpportunityOnAccount.createOpportunityBasedOnAccount(trigger.new);
        }
    }
    if(trigger.isBefore){
        if(trigger.isUpdate){
            AccountTriggerHandler.cloneMasterAccount(trigger.new);
        }
    }
}