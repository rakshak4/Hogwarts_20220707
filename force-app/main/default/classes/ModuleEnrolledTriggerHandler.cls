/**
 * @description       :
 * @author            : Rakshak Rajjoo
 * @last modified on  : 31/01/2022
 * @last modified by  : Rakshak Rajjoo
 * Modifications Log
 * Ver   Date         Author           Modification
 * 1.0   31/01/2022   Rakshak Rajjoo   Initial Version
 **/
public with sharing class ModuleEnrolledTriggerHandler {
    public ModuleEnrolledTriggerHandler() {
    }

    public void handleBeforeInsert(List<ModuleEnrolled__c> lstMdEnrNew) {
        AP02_HandlePassFail.populatePassFail(lstMdEnrNew);
    }

    public void handleBeforeUpdate(List<ModuleEnrolled__c> lstMdEnrNew, List<ModuleEnrolled__c> lstMdEnrOld) {
    }
}