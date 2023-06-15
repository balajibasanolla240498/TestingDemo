public class ExternalAPICallout 
{
    public static HttpResponse makeCallout() 
    {
        HttpRequest req = new HttpRequest();
        req.setEndpoint('https://api.example.com/data');
        req.setMethod('GET');
        Http http = new Http();
        HttpResponse res = http.send(req);
        return res;
    }

}