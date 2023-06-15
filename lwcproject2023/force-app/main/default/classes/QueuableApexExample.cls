public class QueuableApexExample implements Queueable
{
	public void execute(QueueableContext qubcontx)
    {
        Delete [select Id from case WHERE createddate=Last_year];
    }
}