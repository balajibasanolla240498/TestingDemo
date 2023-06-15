public class PostDataToExternalApi 
{
    public static HttpResponse PostAnimaldata()
    {
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://th-apex-http-callout.herokuapp.com/animals');
        request.setMethod('POST');
        //request.setHeader(key, value);
        request.setHeader('Content-Type', 'application/json;charset=UTF-8');
        request.setBody('{"name":"greate white shark","name":"Fish"}');
        //system.debug('1:'+request);
        //USER_DEBUG [12]|DEBUG|1:System.HttpRequest[Endpoint=https://th-apex-http-callout.herokuapp.com/animals, Method=POST]
        
        
        //Get Respnse 
        HttpResponse response = http.send(request);
        //system.debug('2:'+response.getBody());
        //USER_DEBUG [18]|DEBUG|2:{"animals":["majestic badger","fluffy bunny","scary bear","chicken","greate white shark"]}
        
        if(response.getStatusCode() == 201)
        {
            system.debug(response.getBody());
            //USER_DEBUG [23]|DEBUG|{"animals":["majestic badger","fluffy bunny","scary bear","chicken","Fish"]}
        }
        else
        {
            system.debug('Error Status :'+response.getStatusCode());
        }
        
        return response;
    }
}