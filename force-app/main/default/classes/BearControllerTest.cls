@isTest
public class BearControllerTest {
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