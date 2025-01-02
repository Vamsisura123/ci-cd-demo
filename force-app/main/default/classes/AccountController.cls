public with sharing class AccountController 
{
    public List<Account> AccountTemp = new List<Account>();
    public String selected{set;get;}
    public Account acc{set;get;}
    public AccountController()
    {
    
    }
    
    public List<SelectOption> AccList
    {
        get
        {
            AccountTemp = [Select id, Name From Account];
            
            AccList = new List<SelectOption>();
            
            for(Account temp : AccountTemp)
            {
                AccList.add(new SelectOption(temp.id,temp.Name));
            }
            return AccList;
        }
        set;
    }
    public void display()
    {
        acc=[Select name,industry from Account where id=:selected];
    }
}