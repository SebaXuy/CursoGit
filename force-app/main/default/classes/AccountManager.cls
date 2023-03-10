@RestResource(urlMapping='/Accounts/*/contacts')
global with sharing class AccountManager {
    @HttpGet
    global static Account getAccount(){
        RestRequest request = RestContext.request;
        String accountId = request.requestURI.substringBetween('Accounts/','/contacts');
        system.debug('accountId is :' +accountId);
        Account Result = [SELECT Id, Name, (SELECT Id, Name From Contacts) From Account Where Id =: accountId LIMIT 1];
        Return Result;
    }
}