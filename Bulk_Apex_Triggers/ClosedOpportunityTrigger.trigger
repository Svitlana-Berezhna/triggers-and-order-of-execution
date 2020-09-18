// should called OpportunityTrigger
trigger ClosedOpportunityTrigger on Opportunity (before insert, before update, before delete, 
                                          after insert, after update, after delete, after undelete) {
    if (Trigger.isInsert && Trigger.isBefore) {
        OpportunityTriggerHandler.beforeInsert(Trigger.new);
    } else if (Trigger.isInsert && Trigger.isAfter) {
        OpportunityTriggerHandler.afterInsert(Trigger.newMap);
    } else if (Trigger.isUpdate && Trigger.isBefore) {
        OpportunityTriggerHandler.beforeUpdate(Trigger.oldMap, Trigger.newMap);
    } else if (Trigger.isUpdate && Trigger.isAfter) {
        OpportunityTriggerHandler.afterUpdate(Trigger.oldMap, Trigger.newMap);
    } else if (Trigger.isDelete && Trigger.isBefore) {
        OpportunityTriggerHandler.beforeDelete(Trigger.oldMap);
    } else if (Trigger.isDelete && Trigger.isAfter) {
        OpportunityTriggerHandler.afterDelete(Trigger.oldMap);
    } else if (Trigger.isUndelete && Trigger.isAfter) {
        OpportunityTriggerHandler.afterUndelete(Trigger.newMap);
    }
}
