@isTest
public class LeadProcessorTest {

    @isTest
    private static void test() {
        
        List<Lead> leadToInsert = new List<Lead>();
        
        for (Integer i=0; i<200 ;i++) {
            Lead lead = new Lead();
            lead.LastName = 'lastName'+i;
            lead.Company = 'Test Company';
            
            leadToInsert.add(lead);
        }
        
        insert leadToInsert;
        
        Test.startTest();
        LeadProcessor lp = new LeadProcessor();
        Id batchId = Database.executeBatch(lp);
        Test.stopTest();
        
    }
}