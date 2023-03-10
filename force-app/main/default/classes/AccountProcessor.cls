public class AccountProcessor {
    
    @future
    public static void countContacts(List<Id> accountsId) {
        
        List<Account> accounts = [SELECT Id, Number_of_Contacts__c FROM Account WHERE Id IN :accountsId];
        
        List<Contact> contacts = [SELECT Id, Name, AccountId FROM Contact WHERE AccountId IN : accountsId];
        
        Map<Id, List<Contact>> contactsByAccountId = new Map<Id, List<Contact>>();
        
        for (Contact contact : contacts) {
            
            if (!contactsByAccountId.containsKey(contact.AccountId)) {
                contactsByAccountId.put(contact.AccountId, new List<Contact>());
            }
             contactsByAccountId.get(contact.AccountId).add(contact);  
        }
        
        for (Account account : accounts) {
            
            if (contactsByAccountId.containsKey(account.Id)) {
                account.Number_of_Contacts__c = contactsByAccountId.get(account.Id).size();
            }
        }
        
        update accounts;
    }
}