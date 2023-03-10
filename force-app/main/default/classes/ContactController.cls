/**
 * @description       : 
 * @author            : Sebastian.Y.Raggio.-ND@disney.com
 * @group             : 
 * @last modified on  : 12-11-2020
 * @last modified by  : Sebastian.Y.Raggio.-ND@disney.com
 * Modifications Log 
 * Ver   Date         Author                              Modification
 * 1.0   12-11-2020   Sebastian.Y.Raggio.-ND@disney.com   Initial Version
**/
public with sharing class ContactController {
    
    @AuraEnabled(cacheable=true)
    
    public static List<Contact> getContacts() {
        throw new AuraHandledException('Forced error');
        // return [
        //     SELECT FirstName, LastName, Email
        //     FROM Contact
        //     WITH SECURITY_ENFORCED
        //     ORDER BY Name
        // ];
    }
}