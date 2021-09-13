public with sharing class TaskController {
    @AuraEnabled(cacheable=true)
    public static List<Task_Assignments__c> displayAccounts(){
        return [select Id,Name,Status__c,Due_Date__c from Task_Assignments__c];
    }
    @AuraEnabled
    public static List<Task_Assignments__c> updateRecord(String accId){
        System.debug('@@@@TaskId@@@'+accId);
        Task_Assignments__c acc=[select Id,Name,Status__c,Due_Date__c from Task_Assignments__c where Id=:accId];
        acc.Status__c='Completed';
        try{
            update acc;
        }
        catch (Exception e) {
            System.debug('unable to update the record due to'+e.getMessage());
        }
        return displayAccounts();
    }
    
}