public with sharing class LWCAccountController 
{
    public LWCAccountController() 
    {
    }

    @AuraEnabled
    public static List<Account> getAccounts(string searchText)
    {
        try 
        {
            if(string.IsEmpty(searchText))
            {
                return [SELECT Id,Name FROM Account];
            }
            else 
            {
                searchText = '%'+searchText+'%';
                return [SELECT Id,Name from Account WHERE Name LIKE : searchText];
            }
        } 
        catch (Exception e) 
        {
            throw new AuraHandledException(e.getMessage());
        }
    }
}