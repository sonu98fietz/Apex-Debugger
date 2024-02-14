trigger AccountTrigger on Account (before insert, after insert, before update, after update, before delete, after delete, after undelete) {

     If(trigger.isInsert){
        If(trigger.isBefore){
            System.debug('Before---> NewList'+Trigger.New);
            System.debug('Before---> OldList'+Trigger.Old);
            System.debug('Before---> NewMap'+Trigger.NewMap);
            System.debug('Before---> OldMap'+Trigger.OldMap);
        }
        If(trigger.isAfter){
             System.debug('After---> NewList'+Trigger.New);
            System.debug('After---> OldList'+Trigger.Old);
            System.debug('After---> NewMap'+Trigger.NewMap);
            System.debug('After---> OldMap'+Trigger.OldMap);
        }
    }
    
    If(trigger.isUpdate){
        If(trigger.isBefore){
            System.debug('Before---> NewList'+Trigger.New);
            System.debug('Before---> OldList'+Trigger.Old);
            System.debug('Before---> NewMap'+Trigger.NewMap);
            System.debug('Before---> OldMap'+Trigger.OldMap);
        }
        If(trigger.isAfter){
             System.debug('After---> NewList'+Trigger.New);
            System.debug('After---> OldList'+Trigger.Old);
            System.debug('After---> NewMap'+Trigger.NewMap);
            System.debug('After---> OldMap'+Trigger.OldMap);
        }
    }
    
    If(Trigger.isDelete){
        If(trigger.isBefore){
            System.debug('Before---> NewList'+Trigger.New);
            System.debug('Before---> OldList'+Trigger.Old);
            System.debug('Before---> NewMap'+Trigger.NewMap);
            System.debug('Before---> OldMap'+Trigger.OldMap);
        }
        If(trigger.isAfter){
             System.debug('After---> NewList'+Trigger.New);
            System.debug('After---> OldList'+Trigger.Old);
            System.debug('After---> NewMap'+Trigger.NewMap);
            System.debug('After---> OldMap'+Trigger.OldMap);
        }
    }
    
    If(Trigger.isUnDelete){
        If(trigger.isAfter){
             System.debug('After---> NewList'+Trigger.New);
            System.debug('After---> OldList'+Trigger.Old);
            System.debug('After---> NewMap'+Trigger.NewMap);
            System.debug('After---> OldMap'+Trigger.OldMap);
        }
    }


}