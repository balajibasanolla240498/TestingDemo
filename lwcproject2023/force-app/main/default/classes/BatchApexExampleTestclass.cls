@isTest
private class BatchApexExampleTestclass 
{
    @isTest 
    static void testBatchApexExample() 
    {
        // create test data
        List<Contact> contacts = new List<Contact>();
        for (Integer i = 0; i < 200; i++) 
        {
            Contact contact = new Contact();
            contact.FirstName = 'Test';
            contact.LastName = 'Contact ' + i;
            contact.Description = 'Initial Description';
            contacts.add(contact);
        }
        insert contacts;
        
        // execute the batch job
        Test.startTest();
        BatchApexExample batch = new BatchApexExample();
        Database.executeBatch(batch);
        Test.stopTest();
        
        // verify that all contacts were updated
        List<Contact> updatedContacts = [SELECT Id, Description FROM Contact WHERE Id IN :contacts];
        for (Contact contact : updatedContacts) 
        {
            System.assertEquals('Description has updated with contact last name'+contact.LastName, contact.Description, 'Contact was not updated: ' + contact.Id);
        }
    }

}