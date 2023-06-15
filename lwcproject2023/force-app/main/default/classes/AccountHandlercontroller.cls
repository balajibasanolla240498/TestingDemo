public with sharing class AccountHandlercontroller 
{
    @AuraEnabled
    public static string UpdateAccountData(string Id,string Name)
    {
        try 
        {
            Account acc=[select Id,Name,Type From Account Where Id =: Id LIMIT 1];
            acc.Name = Name;
            //acc.Type =  Type;
            Update acc;
            return acc.Id;
        } 
        
        catch (Exception exp) 
        {
           throw new AuraHandledException(exp.getMessage());
        }
    }
    
}