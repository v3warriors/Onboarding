public with sharing class sesController {

    @AuraEnabled(cacheable=true)
    public static List<Onboarding_Steps__c> getContactList() {
        return [ SELECT Id, Name, Standard_Requirements__c,Mentor__r.Name From Onboarding_Steps__c LIMIT 10];
    }
    }