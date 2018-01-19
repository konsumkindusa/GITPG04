trigger SetPromptContactTime on Lead (before insert) {
 BusinessHours bh = [ select ID from BusinessHours where Name = 'My Business Hours'];
     for (Lead newLead : Trigger.new) {
     Datetime newDate = Datetime.now();
     Long interval = 24*60*60*1000;
     Datetime expireDate = BusinessHours.add(bh.ID,newDate,interval);
     newLead.Prompt_Contact_By__c = expireDate;
     }
}