public Class MerckApex2{
public Account CreateRecord(String name){
Account acc = new Account();
acc.Name = name;
//small change for CI Jira integration demo...
//Adding new comment for change
return acc;
}
}