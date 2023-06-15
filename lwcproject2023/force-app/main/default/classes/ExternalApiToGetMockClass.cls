@Istest
global class ExternalApiToGetMockClass implements HttpCalloutMock  
{
    // Mock class to simulate HTTP response
	global HttpResponse respond(HttpRequest request)
    {
        HttpResponse response = new HttpResponse();
        response.setStatusCode(200);
        response.setBody('{"animals":["majestic badger","fluffy bunny","scary bear","chicken"]}');
        return response;
    }
}