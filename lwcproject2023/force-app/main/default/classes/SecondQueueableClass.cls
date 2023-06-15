public class SecondQueueableClass implements Queueable
{
	public void execute(QueueableContext Qbcntx)
    {
       List<contact> con = [select Id,Description from contact];
        List<Contact> cnn = new List<Contact>();
        for(Contact cn:con)
        {
            if(cn.Description == ' ' && cn.Description == null)
            {
                cn.Description = 'Description comming from queueable apex';
            }
            cnn.add(cn);
        }
       update cnn;
        
        
        
       /*List<Contact> cnupdate = new List<Contact>();
       contact cn =  new contact();
       if(cn.Description == ' ' && cn.Description == null)
       {
           cn.Description = 'Description will come from Queueable class';
           con.add(cn);
       }
       UPDATE con;
       system.debug(con);
      */
    }
}