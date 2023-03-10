public class AddPrimaryContact implements Queueable  {
    
    private Contact contact;
    private String abb;
    
    public AddPrimaryContact(Contact contact, String stateAbb) {
        
        this.contact = contact;
        this.abb = stateAbb;
    }
    
    public void execute(QueueableContext context) {
        List<Account> accounts = [select id from account where billingstate = :abb LIMIT 200];
        List<Contact> contacts = new List<Contact>();
        
        for (Account account : accounts) {
          	Contact newContact = contact.clone(false,false,false);
            newContact.AccountId = account.Id;
            contacts.add(newContact);
        }
        insert contacts;
    }
}