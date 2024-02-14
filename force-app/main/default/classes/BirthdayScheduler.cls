global class BirthdayScheduler implements Schedulable{

    global void execute(SchedulableContext ctx){
        ContactBirthdayWishBatch p = new ContactBirthdayWishBatch();
        database.executeBatch(p);
    }
}