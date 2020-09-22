public with sharing class AccountTriggerHandler {
    public static void beforeInsert(List<Account> newAccounts) {
        /** before insert helper method execution **/
    }
    
    public static void afterInsert(Map<Id, Account> newAccounts) {
        /** after insert helper method execution **/
    }
    
    public static void beforeUpdate(Map<Id, Account> oldAccounts, Map<Id, Account> newAccounts) {
        AccountTriggerHandlerHelper.updateAccounts(oldAccounts, newAccounts); 
    }
    
    public static void afterUpdate(Map<Id, Account> oldAccounts, Map<Id, Account> newAccounts) {
        /** after update helper method execution **/          
    }
    
    public static void beforeDelete(Map<Id, Account> oldAccounts) {
        /** before delete helper method execution **/        
    }
    
    public static void afterDelete(Map<Id, Account> oldAccounts) {
        /** after delete helper method execution **/
    }
    
    public static void afterUndelete(Map<Id, Account> newAccounts) {
        /** after undelete helper method execution **/
    }
}
