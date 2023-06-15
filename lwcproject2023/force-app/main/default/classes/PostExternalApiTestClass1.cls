@isTest
private class PostExternalApiTestClass1 
{
    @isTest
    static void testPostextenalapi()
    {
        //Test.setMock(System.interfaceType, mock)
        Test.setMock(HttpCalloutMock.class, new PostDataToExternalApiTestClass());
        
        HttpResponse response = PostDataToExternalApi.PostAnimaldata();
        
        string fakeBody = response.getBody();
        string expected = '{"animals":["majestic badger","fluffy bunny","scary bear","chicken","greate white shark","Fish"]}';
        
        
        //system.assertEquals(expected, actual)
        system.assertEquals(200, response.getStatusCode());
        
        system.assertEquals(fakeBody, expected);
        
    }

}