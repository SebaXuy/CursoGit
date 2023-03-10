public class NewCaseListController {

    public List<Case> getNewCases(){
        String val = 'New';
        List<Case> out = Database.query(
            'SELECT Id, CaseNumber ' +
            'FROM Case ' +
            'WHERE Status=:val'
        );
     
        for(Case c: out){
            System.debug('--Begin--');
            System.debug(c.id);
            System.debug(c.CaseNumber);
            System.debug('--END--');
        }
        
        return out;
    }
    
    
}