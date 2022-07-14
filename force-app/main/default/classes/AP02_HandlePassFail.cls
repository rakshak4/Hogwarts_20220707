/**
 * @description       :
 * @author            : Rakshak Rajjoo
 * @last modified on  : 14/07/2022
 * @last modified by  : Rakshak Rajjoo
 * Modifications Log
 * Ver   Date         Author           Modification
 * 1.0   31/01/2022   Rakshak Rajjoo   Initial Version
 **/
public with sharing class AP02_HandlePassFail {
    /**
     * @description method to pupulate module enrolled status before update
     * @author Rakshak Rajjoo | 14/07/2022
     * @param List<ModuleEnrolled__c> lstMdEnrold
     * @param List<ModuleEnrolled__c> lstMdEnrNew
     **/
    public static void populatePassFail(List<ModuleEnrolled__c> lstMdEnrNew, List<ModuleEnrolled__c> lstMdEnrOld) {
        Set<Id> setModuleId = new Set<Id>();
        for (Integer i = 0; i < lstMdEnrNew.size(); i++) {
            if (lstMdEnrNew[i].CreditsEarned__c != lstMdEnrOld[i].CreditsEarned__c) {
                setModuleId.add(lstMdEnrNew[i].Module__c);
            }
        }
        Map<Id, Module__c> mapMod = new Map<Id, Module__c>([SELECT Id, PassingMark__c FROM Module__c WHERE Id IN :setModuleId]);

        for (Integer i = 0; i < lstMdEnrNew.size(); i++) {
            if (lstMdEnrNew[i].CreditsEarned__c == null) {
                lstMdEnrNew[i].Status__c = 'In Progress';
            } else if (lstMdEnrNew[i].CreditsEarned__c >= mapMod.get(lstMdEnrNew[i].Module__c).PassingMark__c) {
                lstMdEnrNew[i].Status__c = 'Pass';
            } else {
                lstMdEnrNew[i].Status__c = 'Fail';
            }
        }
    }

    /**
     * @description Method to calculate average percentage on student
     * @author Rakshak Rajjoo | 14/07/2022
     * @param List<ModuleEnrolled__c> lstMdEnrNew
     * @param List<ModuleEnrolled__c> lstMdEnrold
     **/
    public static void calculateStudentAveragePercentage(List<ModuleEnrolled__c> lstMdEnrNew, List<ModuleEnrolled__c> lstMdEnrold) {
        //Your code here
    }

    /**
     * @description Method to calculate results (Pass/Fail) of student
     * @author Rakshak Rajjoo | 14/07/2022
     * @param List<ModuleEnrolled__c> lstMdEnrNew
     * @param List<ModuleEnrolled__c> lstMdEnrold
     **/
    public static void calculateStudentResult(List<ModuleEnrolled__c> lstMdEnrNew, List<ModuleEnrolled__c> lstMdEnrold) {
        //Your code here
    }
}
