@isTest
public class BearControllerTest {
    @isTest
    static void testset(){
        Employee__c e = new Employee__c (Onboarding_Start_Date__c = system.today());
        insert e;
        Test.startTest();  
        Employee__c testset = [SELECT Onboarding_Start_Date__c FROM Employee__c LIMIT 1];  
        Test.stopTest();  
        System.assertEquals(testset, e); 
    }  
    
    @isTest  
    static Employee__c[] test(){
        List<Employee__c> Beartest = BearController.getAllBears();
        return Beartest;
    }
    
    @isTest
    static Employee__c[] test1(){
        List<Employee__c> Beartest1 = BearController.searchBears('b');
        return Beartest1;
    }
}