public with sharing class DataCraetionClass 
{
    //This method for invoce the method into flow
    @invocableMethod
    public static void createData()
    {
        //Call below two methods inside this method
        Buses(5);
     	Garages(5);  
    }
    
    //This method will call the TestDataFactory class--->method createGarage
    public static void Buses(integer count)
    {
        try
        {
            Database.insert(TestDataFactory.createBus(5),true);
            system.debug('Records Creted Successfully');
            List<Bus__c> listBus = [select Id,Name From Bus__c with SECURITY_ENFORCED limit 1000];
            system.debug('listBus'+listBus);
        }
        catch(exception exp)
        {
            System.debug('in catch:='+ exp.getStackTraceString() + exp.getMessage());
        }
    }
    
    //This method will call the TestDataFactory class ----> method Garages
    public static void Garages(Integer count)
    {
        try
        {
            Database.insert(TestDataFactory.createGarage(5),true);
            System.debug('Insert done');
            list<Garage__c> listgarage = [select id,Name from Garage__c with SECURITY_ENFORCED limit 1000];	
            System.debug('listgarage'+ listgarage);
        }
        catch(exception exp)
        {
             System.debug('in catch:='+ exp.getStackTraceString() + exp.getMessage());
        }
    }
   
}