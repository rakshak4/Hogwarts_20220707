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
    public static void populatePassFail(List<ModuleEnrolled__c> lstMdEnrNew, List<ModuleEnrolled__c> lstMdEnrold) {
        //Your code here
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