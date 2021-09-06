public with sharing class TaskAssignmentController {
    @AuraEnabled(Cacheable=true)
    public static Task_Assignments__c[] getTasks() {
        return [SELECT Id, Name,Tasks__c,Employee__r.Name,Status__c
            FROM Task_Assignments__c ORDER BY Name LIMIT 50];
    }

    @AuraEnabled(Cacheable=true)
    public static Task_Assignments__c[] SearchTasks(String searchTerm) {
        // Return all bears when no search term
        searchTerm = searchTerm.trim();
        if (searchTerm == '') {
            return getTasks();
        }
        // Prepare query paramters
        searchTerm = '%'+ searchTerm +'%';
        // Execute search query
        return [SELECT Id, Name,Tasks__c,Employee__r.Name,Status__c
        FROM Task_Assignments__c ORDER BY Name LIMIT 50];
    }
}