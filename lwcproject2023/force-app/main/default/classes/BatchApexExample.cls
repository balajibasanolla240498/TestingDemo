public class BatchApexExample implements database.Batchable<Sobject>
{
	public Database.QueryLocator start(Database.BatchableContext bc)
    {
        return Database.getQueryLocator('SELECT Id,Description From Contact');
    }
    public void execute(Database.BatchableContext bc,List<Contact> subListfromstart)
    {
        //Logic here
        for(Contact con:subListfromstart)
        {
           con.Description = 'Description has updated with contact last name'+con.LastName;
        }
        UPDATE subListfromstart;
    }
    public void finish(Database.BatchableContext bc)
    {
        
    }
    
}