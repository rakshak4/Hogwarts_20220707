/**
 * @description       : 
 * @author            : Rakshak Rajjoo
 * @last modified on  : 31/01/2022
 * @last modified by  : Rakshak Rajjoo
 * Modifications Log
 * Ver   Date         Author           Modification
 * 1.0   31/01/2022   Rakshak Rajjoo   Initial Version
**/
trigger ModuleEnrolledTrigger on ModuleEnrolled__c (before insert, before update) {
    ModuleEnrolledTriggerHandler handler = new ModuleEnrolledTriggerHandler();

    //handle Before Insert
    if(Trigger.isBefore && Trigger.isInsert){
        handler.handleBeforeInsert(Trigger.New);
    }

    //handle Before Update
    if(Trigger.isBefore && Trigger.isUpdate){
        handler.handleBeforeUpdate(Trigger.New, Trigger.Old);
    }

}