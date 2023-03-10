@isTest
private class AccountManagerTest {

    @istest
    private static void testGetAccount(){
        Id recordId = createTestRecord();
        System.debug('recordId: '+recordId);
        RestRequest request = new RestRequest();
        
        request.requestUri = 'https://playful-raccoon-263083-dev-ed.my.salesforce.com/services/apexrest/Accounts/'+recordId+'/Contacts';
        request.httpMethod = 'GET';
        RestContext.request = request;
        Account thisAccount = AccountManager.getAccount();
        System.assert(thisAccount != null);
        System.assertEquals('Test record', thisAccount.Name);
    }
    
    private static Id createTestRecord(){
         Account TestAcc = new Account(
          Name='Test record');
        insert TestAcc;
        Contact TestCon= new Contact(
        LastName='Test', 
        AccountId = TestAcc.id);
        insert TestCon;
        return TestAcc.Id;
    }
}