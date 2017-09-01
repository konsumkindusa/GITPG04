@istest
public class SBnDApexTest1{
static testmethod void CreateAccTest(){
SBnDApex1 acc = new SBnDApex1();
 Account ac = acc.CreateRecord('name');
}
}