@isTest
public class TaskAssignmentTest {

    @isTest
    static Task_Assignments__c[] test1(){
        List<Task_Assignments__c> tasktest= TaskAssignmentController.getTasks();
       return tasktest;
    
    }
    
    @isTest 
    
    static Task_Assignments__c[] test2() {
     List<Task_Assignments__c> tasktest2= TaskAssignmentController.SearchTasks('a');
     return tasktest2;
     
        
}
    
}