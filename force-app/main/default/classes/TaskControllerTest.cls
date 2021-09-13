@isTest
public with sharing class TaskControllerTest {
    @isTest
    static void testset(){
        Task_Assignments__c e = new Task_Assignments__c (Due_Date__c = system.today());
        insert e;
        Test.startTest();  
        Task_Assignments__c testset = [SELECT Due_Date__c FROM Task_Assignments__c LIMIT 1];  
        Test.stopTest();  
        System.assertEquals(testset, e); 
    }  
    
    @isTest  
    static Task_Assignments__c[] test(){
        List<Task_Assignments__c> Beartest = TaskController.displayAccounts();
        return Beartest;
    }
    
    @isTest
    static Task_Assignments__c[] test1(){
        List<Task_Assignments__c> tests1 = TaskController.updateRecord('b');
        return tests1;
    }
    
        

    }

