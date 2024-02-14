trigger AccTrigger on Account  (before update) {

    if (Trigger.isBefore && Trigger.isUpdate) {

        AccountHandler.updateAccountNumbers(Trigger.newMap, Trigger.oldMap);

    }
}