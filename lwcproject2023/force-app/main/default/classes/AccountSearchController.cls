public with sharing class AccountSearchController {
    public AccountSearchController() {

    }

    @AuraEnabled
    public static List<Account> findRecords(String searchValue){

        String key = '%'+searchValue+'%';

        String Query = 'Select Id,Name FROM Account WHERE Name LIKE :key';
        List<Account> sobjectList = Database.query(Query);
        return sobjectList;
    }
}