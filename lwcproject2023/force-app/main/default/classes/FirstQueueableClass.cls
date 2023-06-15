public class FirstQueueableClass implements Queueable
{
	public void execute(QueueableContext Qebcnt)
    {
        List<Account> acc=[Select Id from Account WHERE createddate=last_year];
        Delete acc;
        
        //add in this class another class method
        system.enqueueJob(new SecondQueueableClass());
        
    }
}