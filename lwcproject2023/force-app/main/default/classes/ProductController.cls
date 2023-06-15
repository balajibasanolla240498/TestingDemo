public with sharing class ProductController 
{

        @AuraEnabled(cacheable=true)
        public static List<ProductWrapper> getProducts() 
        {
            List<ProductWrapper> products = new List<ProductWrapper>();
            for (Product__c p : [SELECT Id, Name, Description__c, Image_Url__c FROM Product__c]) 
            {
                products.add(new ProductWrapper(p));
            }
            return products;
        }
        
        public class ProductWrapper 
        {
            public Id Id;
            public String Name;
            public String Description;
            public String Image;
            
            public ProductWrapper(Product__c p) 
            {
                Id = p.Id;
                Name = p.Name;
                Description = p.Description__c;
                Image = p.Image_Url__c;
            }
        }
    
    

}