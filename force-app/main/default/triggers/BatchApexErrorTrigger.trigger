trigger BatchApexErrorTrigger on BatchApexErrorEvent (after insert) {
    
    switch on Trigger.OperationType {
        when AFTER_INSERT {
            execute(Trigger.old, Trigger.new);
        }
    }
    
    
    private void execute(List<BatchApexErrorEvent> old, List<BatchApexErrorEvent> newData) {
        
        List<BatchLeadConvertErrors__c> blces = new List<BatchLeadConvertErrors__c>();
        
        for (BatchApexErrorEvent b : newData) {
            BatchLeadConvertErrors__c blce = new BatchLeadConvertErrors__c();
            blce.AsyncApexJobId__c  = b.AsyncApexJobId ;
            blce.Records__c = b.JobScope;
            blce.StackTrace__c = b.StackTrace;
            blces.add(blce);
    
        }
        
        insert blces;
        
    }

}