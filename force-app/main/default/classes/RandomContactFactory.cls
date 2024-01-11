public with sharing class RandomContactFactory {

    public static List<Contact> generateRandomContacts(Integer numOfContacts, String contactsLastName) {

        List<Contact> contacts = new List<Contact>();

        for(Integer i = 0;i < numOfContacts; i++){
            contacts.add(new Contact(FirstName = 'Test' + i, LastName = contactsLastName));
        }

        return contacts;

    }
}