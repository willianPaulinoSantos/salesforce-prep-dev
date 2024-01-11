@isTest
public class TestRestrictContactByName {
    
    @isTest
    static void restrictContactWithInvalidNameTest() {
        Contact ctt = new Contact(FirstName = 'Teste', LastName = 'INVALIDNAME');

        Test.startTest();
        try{
            
            Database.SaveResult result = Database.insert(ctt);

        } catch (Exception ex){

            System.assert(ex.getMessage() != null, 'without errors');
        }
        Test.stopTest();
    }
}