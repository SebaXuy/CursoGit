global class LeadProcessor implements Database.Batchable<sObject> {

    global Database.QueryLocator start(Database.BatchableContext bc) {
        String query = 'SELECT Id, Name, LeadSource FROM Lead';
        return Database.getQueryLocator(query);
        
    }
    global void execute(Database.BatchableContext bc, List<Lead> records){
      
        for (Lead lead : records) {
            lead.LeadSource = 'Dreamforce';
        }
        
        update records;
    }    
    
    
    global void finish(Database.BatchableContext bc){
        // execute any post-processing operations
    }    
}