@RestResource(urlMapping='/case/*/close')
global with sharing class CaseCloseResource {

    @HttpPost
    global static void closeCase(String closeReason) {
        System.debug(' closeCase closeReason: '+closeReason);
        RestRequest req = RestContext.request;
        System.debug(' req: '+req);
        String[] uriParts = req.requestURI.split('/');
        Id caseId = uriParts[2];
         
        // Call the service
        CaseService.closeCases(
            new Set<ID> { caseId }, closeReason);     
    }
}