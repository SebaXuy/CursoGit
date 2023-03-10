@isTest
public class ParkLocatorTest {
	@isTest
    static void testPark() {              
        // This causes a fake response to be generated
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        // Call the method that invokes a callout
        String country = 'United States';
        String[] result = ParkLocator.country(country);
        // Verify that a fake result is returned
        System.assertEquals('Garner State Park', result[0]); 
    }
}