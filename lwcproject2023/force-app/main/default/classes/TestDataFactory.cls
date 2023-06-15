public class TestDataFactory 
{
    //This method for creating Garage object Records
    public static List<Garage__c> createGarage(integer count)
    {
        List<Garage__c> allGarages = new List<Garage__c>();
        try
        {
            for(integer i=1;i<=count;i++)
            {
                Garage__c newGarage = new Garage__c();
                
                newGarage.Name = 'Garage' + Integer.valueOf(Math.random()*100);
                newGarage.Location__Latitude__s = Math.random()*100-10;
                newGarage.Location__Longitude__s = Math.random()*100-10;
                
                allGarages.add(newGarage);
            }
        }
        catch(Exception exp)
        {
            System.debug('in catch:=createGarage'+ exp.getStackTraceString());
        }
        system.debug('allGarages'+allGarages);
        return allGarages;
    }
    
    //This method is for creating Bus object records
    Public static List<Bus__c> createBus(integer count)
    {
        List<Bus__c> allBuses = new List<Bus__c>();
        try
        {
            for(integer i=1;i<=count;i++)
            {
            	Bus__c newbus = new Bus__c();
                
                newbus.Name = 'Bus '+ Integer.valueOf(Math.random()*100);
                newbus.Air_conditioner__c = true;
                newbus.Odometer_Reading__c = 5000;
                newbus.Year__c = 2001;
                newbus.Maximum_Capacity__c = '24';
                newbus.Current_Status__c = 'Ready For Use';
                newbus.Bus_Image__c='https://media.istockphoto.com/photos/white-tour-bus-picture-id974313674?k=6&m=974313674&s=612x612&w=0&h=YHb67YOSOvp7-npMNsWXELg3d83TzaYS1TgLraQGi0o=';
                newbus.Location__Latitude__s=Math.random()*100-10 ; 
        	    newbus.Location__Longitude__s=Math.random()*100-10 ;
                
             allBuses.add(newbus); 
            }
        }
        catch(exception ep)
        {
            System.debug('in catch:=createBus'+ ep.getStackTraceString());
        }
        
        
         for (integer i=1;i<=count;i++){     
       		 Bus__c newbus =  new  Bus__c();
             newbus.Name = 'Bus '+ Integer.valueOf(Math.random()*100) ; 
        	 newbus.Air_conditioner__c = true;
        	 newbus.Odometer_Reading__c = 120000;
        	 newbus.Year__c = 2015;
        	 newbus.Maximum_Capacity__c='24';
        	 newbus.Current_Status__c = 'Ready For Use';
             newbus.Bus_Image__c='https://media.gettyimages.com/photos/bus-picture-id136521748?s=612x612';
             newbus.Location__Latitude__s=Math.random()*100-10 ; 
        	 newbus.Location__Longitude__s=Math.random()*100-10 ;
             allBuses.add(newbus); 
             
         }
        
         for (integer i=1;i<=count;i++){     
       		 Bus__c newbus =  new  Bus__c();
             newbus.Name = 'Bus '+ Integer.valueOf(Math.random()*100) ; 
        	 newbus.Air_conditioner__c = true;
        	 newbus.Odometer_Reading__c = 160000;
        	 newbus.Year__c = 2009;
        	 newbus.Maximum_Capacity__c='36';
        	 newbus.Current_Status__c = 'Ready For Use';
             newbus.Bus_Image__c='https://ichef.bbci.co.uk/news/976/cpsprodpb/4597/production/_110451871_bus2.jpg';
             newbus.Location__Latitude__s=Math.random()*100-10 ; 
        	 newbus.Location__Longitude__s=Math.random()*100-10 ;
             allBuses.add(newbus); 
             
         }
         for (integer i=1;i<=count;i++){     
       		 Bus__c newbus =  new  Bus__c();
             newbus.Name = 'Bus '+ Integer.valueOf(Math.random()*100) ; 
        	 newbus.Air_conditioner__c = true;
        	 newbus.Odometer_Reading__c = 160000;
        	 newbus.Year__c = 1972;
        	 newbus.Maximum_Capacity__c='36';
        	 newbus.Current_Status__c = 'Ready For Use';
             newbus.Bus_Image__c='https://www.sustainable-bus.com/wp-content/uploads/2019/12/scania-bus4.jpg';
             newbus.Location__Latitude__s=Math.random()*100-10 ; 
        	 newbus.Location__Longitude__s=Math.random()*100-10 ;
             allBuses.add(newbus);
         }
         for (integer i=1;i<=count;i++){     
       		 Bus__c newbus =  new  Bus__c();
             newbus.Name = 'Bus '+ Integer.valueOf(Math.random()*100) ; 
        	 newbus.Air_conditioner__c = true;
        	 newbus.Odometer_Reading__c = 160000;
        	 newbus.Year__c = 1972;
        	 newbus.Maximum_Capacity__c='24';
        	 newbus.Current_Status__c = 'Ready For Use';
             newbus.Bus_Image__c='https://ichef.bbci.co.uk/news/976/cpsprodpb/4597/production/_110451871_bus2.jpg';
             newbus.Location__Latitude__s=Math.random()*100-10 ; 
        	 newbus.Location__Longitude__s=Math.random()*100-10 ;
             allBuses.add(newbus); 
         }
        
        for (integer i=1;i<=count;i++){     
       		 Bus__c newbus =  new  Bus__c();
             newbus.Name = 'Bus '+ Integer.valueOf(Math.random()*100) ; 
        	 newbus.Air_conditioner__c = true;
        	 newbus.Odometer_Reading__c = 5000;
        	 newbus.Year__c = 2001;
        	 newbus.Maximum_Capacity__c='60';
        	 newbus.Current_Status__c = 'Ready For Use';
             newbus.Bus_Image__c='https://media.istockphoto.com/photos/white-tour-bus-picture-id974313674?k=6&m=974313674&s=612x612&w=0&h=YHb67YOSOvp7-npMNsWXELg3d83TzaYS1TgLraQGi0o=';
             newbus.Location__Latitude__s=Math.random()*100-10 ; 
        	 newbus.Location__Longitude__s=Math.random()*100-10 ; 
             allBuses.add(newbus);            
             
      }
        
      System.debug(allBuses);
      return allBuses;
    }
}