public class CoverageCls{
    public string name{get;set;}
    
    public void save(){
        Account acct=new Account();
        
        acct.name=name;
        insert acct;
    }
}