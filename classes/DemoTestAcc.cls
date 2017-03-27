public Class DemoTestAcc{
//New changes
public Account createAccount(String name){
Account acc = new Account();
acc.Name = name;
Contact con=new Contact();
return acc;
}
}