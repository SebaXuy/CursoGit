global class DailyLeadProcessor  implements Schedulable{

    global void execute(SchedulableContext ctx) {
        List<Lead> leads = [SELECT Id, leadSource FROM Lead WHERE leadSource = null LIMIT 200];
        
        for (Lead lead : leads) {
            lead.LeadSource = 'Dreamforce';
        }
        update leads;
    }
}