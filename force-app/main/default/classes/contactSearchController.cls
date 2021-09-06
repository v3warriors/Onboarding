public with sharing class contactSearchController {
    @AuraEnabled(Cacheable=true)
    public static Contact[] getAllContacts() {
        return [SELECT Id, Name
            FROM Contact ORDER BY Name LIMIT 10];
    }
    @AuraEnabled(Cacheable=true)
    public static List<Contact> searchContacts(String namePattern) {
        String searchString = '%' + namePattern + '%';
        return( [select id, name, email, CreatedDate 
                   from Contact 
                  where Name like :searchString]);
    }
}