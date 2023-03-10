@isTest
public class TestRestrictContactByName {

    @isTest static void TestRestrictContactByNameCase1() {
        Contact c = new Contact(FirstName='Sebas',LastName='INVALIDNAME');
        //insert c;
        
        Test.startTest();
        Database.SaveResult result = Database.insert(c,false);
        Test.stopTest();
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name "INVALIDNAME" is not allowed for DML',
                             result.getErrors()[0].getMessage());
        
    }
}