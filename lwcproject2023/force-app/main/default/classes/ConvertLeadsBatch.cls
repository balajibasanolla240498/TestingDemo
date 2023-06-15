global class ConvertLeadsBatch implements Database.Batchable<Sobject>
{
    global Database.QueryLocator start(Database.BatchableContext bc)
    {
        String query = 'select Id From Lead where IsConverted=false';
        return Database.getQueryLocator(query);
    }
    global void execute(Database.BatchableContext BC, List<Lead> scope)
    {
        List<Database.LeadConvert> leadConverts = new List<Database.LeadConvert>();
        for (Lead lead : scope) 
        {
            Database.LeadConvert lc = new Database.LeadConvert();
            lc.setLeadId(lead.Id);
            leadConverts.add(lc);
        }
        List<Database.LeadConvertResult> results = Database.convertLead(leadConverts);
    } 
    global void finish(Database.BatchableContext BC) 
    {
        // perform any post-processing tasks here
    }

}