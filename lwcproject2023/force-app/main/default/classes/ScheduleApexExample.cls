public class ScheduleApexExample implements Schedulable
{
	public void execute(SchedulableContext sc)
    {
        /*
        List<Account> accs=[select id,Name from Account];
        for(Account acc:accs)
        {
           acc.Name = 'Updated'+acc.Name;
        }
        update accs;
       */
        Database.executeBatch(new TestScheduleBatchclass());
    }
}