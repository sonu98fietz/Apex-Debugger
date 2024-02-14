global class ContactBirthdayWishBatch implements Database.Batchable<SObject>{

    global  Database.QueryLocator start(Database.BatchableContext bc){
        Date todayDate= System.today();
        string soql ='select id,Birthdate,Email from contact where DAY_IN_MONTH(Birthdate)='+todayDate.day()+'AND CALENDER_MONTH(Birthdate)='+todayDate.month();
        return database.getQueryLocator(soql);
    }
    global void execute(Database.BatchableContext bc,List<Contact> newList){
        List<Task> tasklist= new List<Task>();
        for(Contact cont: newList){
            System.debug('cons-->'+cont);
            Task tsk = new Task();
            tsk.subject = 'Happy Birthday';
            tsk.Status = 'Open';
            tsk.Priority = 'Normal';
            tsk.WhoId = cont.ID;
            tsk.OwnerId = cont.OwnerId;
            tasklist.add(tsk);
        } 
    }
    global void finish(Database.BatchableContext bc){
        system.enqueueJob(new ContactBirthdayWishBatch());
    }
}