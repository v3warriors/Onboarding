@isTest
public class sesControllerTest {
    
    @isTest
    static void OnboardingStepFunction(){
        Onboarding_Steps__c e = new Onboarding_Steps__c (Name = 'HR Documents');
        insert e;
        Test.startTest();  
        Onboarding_Steps__c testset = [SELECT Name FROM Onboarding_Steps__c LIMIT 1];  
        Test.stopTest();  
        System.assertEquals(testset, e); 
    } 
    @isTest
    static Onboarding_Steps__c[] getContactListTest()
    {
        List<Onboarding_Steps__c> testing = sesController.getContactList();
        return testing;
    }
}