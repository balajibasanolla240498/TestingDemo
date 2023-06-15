//@hatapp Tutorial Youtube classes
public class ExterApiToGetData 
{
    public static HttpResponse getAnimalsdata()
    {
        //Sending request to thirdaprty url
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('GET');
        
        //Getting Response from thirdparty Url
        HttpResponse response = http.send(request);
        system.debug(response.getStatusCode());
        //10:12:09:864 USER_DEBUG [14]|DEBUG|200
        
        if(response.getStatusCode() == 200)
        {
            Map<String,Object> results = (Map<String,Object>) JSON.deserializeUntyped(response.getBody());
            system.debug('Map'+results);
            /*|DEBUG|{animals= <----- (object)(key)
             
                             (Value) string ----> (majestic badger, fluffy bunny, scary bear, chicken)
                     }
            */
            
            //Get Animal in list type format
            List<Object> animals = (List<Object>) results.get('animals');
            system.debug('List'+animals);
            //USER_DEBUG [28]|DEBUG|(majestic badger, fluffy bunny, scary bear, chicken)
            
            
            //Itterate in for loop to display
            for(Object animal:animals)
            {
                system.debug(animal);
                /* USER_DEBUG [35]|DEBUG|majestic badger
                 * USER_DEBUG [35]|DEBUG|fluffy bunny
                 * USER_DEBUG [35]|DEBUG|scary bear
                 * USER_DEBUG [35]|DEBUG|chicken
               */
            }
            
        }
        return response;
    }
}