public with sharing class OpportunityTriggerHandlerHelper {
    public static void createTaskForOpportunityWithClosedWonStage(Map<Id, Opportunity> newOpportunities) { 
        List<Task> tasks = new List<Task>();
        for (Opportunity opportunity : newOpportunities.values()) {         
            if(opportunity.StageName != 'Closed Won') {
                continue;
            }
            tasks.add(new Task(WhatId = opportunity.Id, Subject = 'Follow Up Test Task'));
        }
        insert tasks;
    }
}   
