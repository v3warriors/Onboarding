public with sharing class employeeControllers {
    @AuraEnabled(cacheable=true)
    public static List<sObject> searchEmployee(String searchParam){
        String likeParam = '%' +searchParam+'%';
        String Query = '';
       
        if(searchParam != null){
           Query  = 'Select Id, Name, Employee_Name__r.Name, Mentor_Name__r.Name, Functional_Role__r.Name, Onboarding_End_Date__c From Employee__c Where Employee_Name__r.Name Like :likeParam LIMIT 50 ';
        }else{
           Query  = 'Select Id,Name, Employee_Name__r.Name, Mentor_Name__r.Name, Functional_Role__r.Name,Onboarding_End_Date__c From Employee__c LIMIT 50 '; 
        }
        
        List<SObject> sObjectList = Database.query(Query);
        return sObjectList;
    }
}