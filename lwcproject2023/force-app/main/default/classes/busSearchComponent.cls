public with sharing class busSearchComponent {
    public busSearchComponent() {

    }
    
    /*
        @AuraEnabled(cacheable=true)
        public static list<Bus__c> GetBusData(String searchValue ){

            string searchKeyword = '%' + searchValue  + '%';

            //create Bus list to store search result
            list<Bus__c> BustListRecord = new list<Bus__c>();

            // query contact records
            for(Bus__c busobj:[Select Id,Name,Resale_Value__c,year__c,Bus_Image__c,Odometer_Reading__c,Maximum_Capacity__c From Bus__c with SECURITY_ENFORCED limit 50000])
            {
                BustListRecord.add(busobj);
            }

            if(BustListRecord.size() == 0){
                throw new AuraHandledException('No Record Found..'); 
            }
            
            return BustListRecord;
        }
    */
    @AuraEnabled(cacheable=true)
    public static List<Bus__c> fetchBuses(String Keysearch)
    {
        return [
                  Select Id,Name,Resale_Value__c,year__c,Bus_Image__c,Odometer_Reading__c,Maximum_Capacity__c From Bus__c
                  where Name = : Keysearch
               ];
    }

}