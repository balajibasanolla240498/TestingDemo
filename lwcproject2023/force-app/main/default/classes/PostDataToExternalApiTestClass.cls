@Istest
global class PostDataToExternalApiTestClass implements HttpCalloutMock
{
	global HTTPResponse respond(HTTPRequest request)
    {
        HttpResponse response = new HttpResponse();
        response.setHeader('Contect-Type', 'application/json');
        response.setBody('{"animals":["majestic badger","fluffy bunny","scary bear","chicken","greate white shark","Fish"]}');
        response.setStatusCode(200);
        
        return response;
    }
}