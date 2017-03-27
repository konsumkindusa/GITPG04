@isTest
private class Todd_CopyToAccount_Tester {

  static @isTest void valueCopies()
  {
    Account a = new Account(Name='tst account');
    insert a;
    Contact c = new Contact(AccountId = a.Id, LastName = 'Flatley', Todd_Source_Value__c = 'shoot me over');
    insert c;

    Account checkMe = [SELECT Id, Todd_Target_Value__c FROM Account WHERE Id = :a.Id];
    System.assertEquals(c.Todd_Source_Value__c, checkMe.Todd_Target_Value__c);
  }

}