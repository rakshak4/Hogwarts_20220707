/**
 * @description       : 
 * @author            : Rakshak Rajjoo
 * @last modified on  : 24/01/2022
 * @last modified by  : Rakshak Rajjoo
 * Modifications Log
 * Ver   Date         Author           Modification
 * 1.0   24/01/2022   Rakshak Rajjoo   Initial Version
**/
public with sharing class AP01_StudentEnrolment {
   
    public static void enrolStudent(Id studentId, Id moduleId){
        ModuleEnrolled__c modEnr = new ModuleEnrolled__c(
            Student__c = studentId,
            Module__c = moduleId
        );

        insert modEnr;
    }

    public static List<Student__c> fetchStudentsEnrolled(Id moduleId){
        List<ModuleEnrolled__c> lstModEnr = [SELECT Id, Student__c FROM ModuleEnrolled__c WHERE Module__c = :moduleId];

        Set<Id> setStdId = new Set<Id>();
        for(ModuleEnrolled__c modEnr : lstModEnr){
            setStdId.add(modEnr.Student__c);
        }

        List<Student__c> lstStd = [SELECT Id, Name FROM Student__c WHERE Id IN :setStdId];
        return lstStd;
    }
}