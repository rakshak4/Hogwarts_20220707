/**
 * @description       :
 * @author            : Rakshak Rajjoo
 * @last modified on  : 14/07/2022
 * @last modified by  : Rakshak Rajjoo
 * Modifications Log
 * Ver   Date         Author           Modification
 * 1.0   31/01/2022   Rakshak Rajjoo   Initial Version
 **/
public with sharing class ModuleEnrolledTriggerHandler {
    public ModuleEnrolledTriggerHandler() {
    }

    /**
     * @description Method to handle before insert trigger
     * @author Rakshak Rajjoo | 14/07/2022
     * @param List<ModuleEnrolled__c> lstMdEnrNew
     **/
    public void handleBeforeInsert(List<ModuleEnrolled__c> lstMdEnrNew) {
    }

    /**
     * @description method to handle before update trigger
     * @author Rakshak Rajjoo | 14/07/2022
     * @param List<ModuleEnrolled__c> lstMdEnrNew
     * @param List<ModuleEnrolled__c> lstMdEnrOld
     **/
    public void handleBeforeUpdate(List<ModuleEnrolled__c> lstMdEnrNew, List<ModuleEnrolled__c> lstMdEnrOld) {
        AP02_HandlePassFail.populatePassFail(lstMdEnrNew, lstMdEnrOld);
    }

    /**
     * @description method to handle after update trigger
     * @author Rakshak Rajjoo | 14/07/2022
     * @param List<ModuleEnrolled__c> lstMdEnrNew
     * @param List<ModuleEnrolled__c> lstMdEnrOld
     **/
    public void handleAfterUpfate(List<ModuleEnrolled__c> lstMdEnrNew, List<ModuleEnrolled__c> lstMdEnrOld) {
        AP02_HandlePassFail.calculateStudentAveragePercentage(lstMdEnrNew, lstMdEnrold);
        AP02_HandlePassFail.calculateStudentResult(lstMdEnrNew, lstMdEnrold);
    }
}