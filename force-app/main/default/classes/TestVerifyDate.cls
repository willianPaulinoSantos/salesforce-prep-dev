@isTest
public with sharing class TestVerifyDate {
   
   @isTest
    static void CheckDatesWithin30Days() {
        Date date1 = Date.newInstance(2024, 1, 10);
        Date date2 = date1.addDays(28);

        Test.startTest();
        Date resultDate = VerifyDate.CheckDates(date1, date2);
        Test.stopTest();

        System.assertEquals(date2, resultDate);
    }

    @isTest
    static void CheckDatesWithout30Days(){

        Date date1 = Date.newInstance(2024, 1, 10);
        Date date2 = date1.addDays(40);

        Integer totalDays = Date.daysInMonth(date1.year(), date1.month());
		Date expectedDate = Date.newInstance(date1.year(), date1.month(), totalDays);

        Test.startTest();
        Date resultDate = VerifyDate.CheckDates(date1, date2);
        Test.stopTest();

        System.assertEquals(expectedDate, resultDate);
    }
}