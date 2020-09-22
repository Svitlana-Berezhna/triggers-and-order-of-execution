public with sharing class AccountTriggerHandlerHelper {
    private static boolean firstRun = true; 
    
    public static void updateAccounts(Map<Id, Account> oldAccounts, Map<Id, Account> newAccounts) {
        List<Account> listToUpdate = new List<Account>();
        
        List<Account> accounts = getListOfAccounts();
        for (Account account : accounts) { 
            if(firstRun) {
                account.Name = 'Test account';
                listToUpdate.add(account);
                firstRun = false;
            }
        } 
        update listToUpdate;
    }
    
    private static List<Account> getListOfAccounts() {
        List<Account> accounts = [SELECT Name
                                  FROM Account 
                                  ORDER BY Name
                                  LIMIT 5];
        return accounts;
    }
}
