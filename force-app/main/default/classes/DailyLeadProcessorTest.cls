@isTest
public class DailyLeadProcessorTest {

    public static String CRON_EXP = '0 0 0 15 3 ? 2022';
    
    @testSetup 
    static void setup() {
        List<Lead> leads = new List<Lead>();
        for (Integer i = 0; i < 200; i++) {
            leads.add(new Lead( LastName='Test Lead CA'+i, Company = 'Company'+i ));
        }
        insert leads;
    }
    
    @isTest
    private static void scheduletest(){
     
        Test.startTest();
        String jobId = System.schedule('ScheduledApexTest',CRON_EXP, new DailyLeadProcessor());         
        Test.stopTest();
    }
    
}