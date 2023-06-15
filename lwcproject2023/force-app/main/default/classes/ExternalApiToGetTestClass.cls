@istest
private class ExternalApiToGetTestClass 
{
	// Test method to test getAnimalsdata() method
	@istest
    static void testGetAnimalsdata()
    {
        //Test.setMock(System.interfaceType, mock)
        Test.setMock(HttpCalloutMock.class,new ExternalApiToGetMockClass());
        
        // Call the getAnimalsdata() method
        HttpResponse response = ExterApiToGetData.getAnimalsdata();
        
        // Assert the response status code
        system.assertEquals(200, response.getStatusCode());
        
        // Assert the animal list
        Map<String,Object> results = (Map<String,Object>) JSON.deserializeUntyped(response.getBody());
        List<Object> animals = (List<Object>) results.get('animals');
        system.assertEquals('majestic badger', animals[0]);
        system.assertEquals('fluffy bunny', animals[1]);
        system.assertEquals('scary bear', animals[2]); 
    }
}