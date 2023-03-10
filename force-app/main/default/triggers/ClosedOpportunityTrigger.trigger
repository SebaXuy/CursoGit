trigger ClosedOpportunityTrigger on Opportunity (before insert, before update) {
    List<Opportunity> op = new List<Opportunity>();
    
    for(Opportunity o : Trigger.new){
        if(o.StageName=='Closed Won'){
            System.debug('Begin---OP---'+o.Name);
            op.add(o);
            System.debug('End---OP---');
        }
    }
    System.debug('======================');
    List<Task> ts = new List<Task>();
    for(Opportunity o : op){ 
        System.debug('Begin---Task---'+o.Name);
        Task t = new Task(Subject='Follow Up Test Task');
        t.WhatId = o.Id;
        ts.add(t);
        System.debug('End---Task---'+o.Id);
    }
    insert ts;
}