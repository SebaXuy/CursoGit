public class CaseService {
    
    public static void closeCases(Set<Id> casesId, String closeReasons) {
        
        System.debug('Start casesId: '+casesId + 'closeReasons'+closeReasons);
        
        if(casesId==null || casesId.size()==0)
            throw new CaseServiceException('Cases not specified.');
        if(String.isBlank(closeReasons))
            throw new CaseServiceException('Not Reason');
        
        
        List<Case> casesToUpdate = new List<Case>();
        for (Case casetoupdate : [select Id, Reason, Status, isClosed from Case where Id in :casesId]) {
             System.debug('casetoupdate: '+casetoupdate);
            casetoupdate.Reason = closeReasons;
            casetoupdate.Status = 'Closed';
            casesToUpdate.add(casetoupdate);
        }
        System.debug('casesToUpdate: '+casesToUpdate);
        // Update the database
        SavePoint sp = Database.setSavePoint();
        try {
            update casesToUpdate;
           
        } catch (Exception e) {
            // Rollback
            Database.rollback(sp);
            // Throw exception on to caller
            throw e;
        }       
        
    }
    
    public class CaseServiceException extends Exception {} 

}