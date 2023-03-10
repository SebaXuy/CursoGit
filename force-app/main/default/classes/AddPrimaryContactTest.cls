@isTest
public class AddPrimaryContactTest {

    @testSetup 
    static void setup() {
        List<Account> accounts = new List<Account>();
        for (Integer i = 0; i < 50; i++) {
            accounts.add(new Account(
                name='Test Account NY'+i,
                billingstate = 'NY'
            ));
            accounts.add(new Account(
                name='Test Account CA'+i,
                billingstate = 'CA'
            ));
        }
        insert accounts;
    }
    
    @isTest
    private static void testQueueable() {
        Contact contact = new Contact(LastName = 'Test');
        insert contact;
        AddPrimaryContact updater = new AddPrimaryContact(contact, 'CA');
       
        Test.startTest();        
        System.enqueueJob(updater);
        Test.stopTest();        
        // Validate the job ran. Check if record have correct parentId now
        System.assertEquals(50, [select count() from account where billingstate = 'CA']);
    }
}