@isTest
public class AccountProcessorTest {
    
    @isTest
    private static void countContactsTest() {
        
        Account account = new Account();
        account.Name = 'Test';
        insert account;
        
        Contact contact = new Contact();
        contact.AccountId = account.Id;
        Contact.LastName = 'TestLastname';
        insert contact;
        
        List<Id> accountsId = new List<Id>();
        accountsId.add(account.Id);
        
        Test.startTest();
        AccountProcessor.countContacts(accountsId);
        Test.stopTest();
        
    }
}