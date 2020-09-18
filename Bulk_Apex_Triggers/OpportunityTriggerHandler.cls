public with sharing class OpportunityTriggerHandler {
    public static void beforeInsert(List<Opportunity> newOpportunities) {
        /** before insert helper method execution **/
    }
    
    public static void afterInsert(Map<Id, Opportunity> newOpportunities) {
        OpportunityTriggerHandlerHelper.createTaskForOpportunityWithClosedWonStage(newOpportunities);
    }
    
    public static void beforeUpdate(Map<Id, Opportunity> oldOpportunities, Map<Id, Opportunity> newOpportunities) {
        /** before update helper method execution **/
    }
    
    public static void afterUpdate(Map<Id, Opportunity> oldOpportunities, Map<Id, Opportunity> newOpportunities) {        
        OpportunityTriggerHandlerHelper.createTaskForOpportunityWithClosedWonStage(newOpportunities);
    }
    
    public static void beforeDelete(Map<Id, Opportunity> oldOpportunities) {
        /** before delete helper method execution **/        
    }
    
    public static void afterDelete(Map<Id, Opportunity> oldOpportunities) {
        /** after delete helper method execution **/
    }
    
    public static void afterUndelete(Map<Id, Opportunity> newOpportunities) {
        /** after undelete helper method execution **/
    }
}
