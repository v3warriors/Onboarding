@isTest
public class sesControllerTest {
@isTest
    static Onboarding_Steps__c[] getContactListTest()
    {
        List<Onboarding_Steps__c> testing = sesController.getContactList();
        return testing;
    }
}