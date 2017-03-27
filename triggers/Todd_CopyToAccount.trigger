trigger Todd_CopyToAccount on Contact (after insert, after update) {

  Map<Id, Account> accounts = new Map<Id, Account>();
  for (Contact c : Trigger.new)
  {
    if (c.AccountId == null|| String.isBlank(c.Todd_Source_Value__c)) continue;
    accounts.put(c.AccountId, new Account(Id = c.AccountId, Todd_Target_Value__c = c.Todd_Source_Value__c));
  }

  update accounts.values();

}