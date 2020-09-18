public with sharing class AccountTriggerHandlerHelper {
    public static void changeAccountShippingPostalCode(List<Account> newAccounts) {
        for (Account account : newAccounts) {
            changeAccountShippingPostalCodeCondition(account);
        }
    }
    
    public static void changeAccountShippingPostalCode(Map<Id, Account> newAccounts) {  
        for (Account account : newAccounts.values()) {           
            changeAccountShippingPostalCodeCondition(account);
        }
    }   
    
    private static void changeAccountShippingPostalCodeCondition(Account account) {          
        if(account.Match_Billing_Address__c == true && account.BillingPostalCode != null) {
            account.ShippingPostalCode = account.BillingPostalCode;
        }
    } 
}
