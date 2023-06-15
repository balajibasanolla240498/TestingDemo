public class TestScheduleBatchclass implements Database.Batchable<Sobject>
{
	public Database.queryLocator start(Database.BatchableContext ac)
    {
        return Database.getQueryLocator('select Id,Name From Account');
    }
    public void execute(Database.BatchableContext bc,List<Account> acclist)
    {
        for(Account acc:acclist)
        {
            
        }
    }
    public void finish(Database.BatchableContext bc)
    {
        
    }
}