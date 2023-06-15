@isTest 
private class TestClassforLeadBatchApex 
{
    @isTest 
    static void testConvertLeadsBatch() 
    {
        // create test data
        List<Lead> leads = new List<Lead>();
        for (Integer i = 0; i < 200; i++) 
        {
            Lead lead = new Lead();
            lead.FirstName = 'Test';
            lead.LastName = 'Lead ' + i;
            lead.Company = 'Test Company ' + i;
            leads.add(lead);
        }
        insert leads;
        
        // execute the batch job
        Test.startTest();
        ConvertLeadsBatch batch = new ConvertLeadsBatch();
        Database.executeBatch(batch);
        Test.stopTest();
        
        // verify that all leads were converted
        List<Lead> convertedLeads = [SELECT Id, IsConverted FROM Lead WHERE Id IN :leads];
        for (Lead lead : convertedLeads) 
        {
            System.assertEquals(true, lead.IsConverted, 'Lead was not converted: ' + lead.Id);
        }
    }

}