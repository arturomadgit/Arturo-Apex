@isTest
private class CounterPicklistValuesTest {
	
	@isTest static void test_method_one() {
		Account acc = new Account();
		acc.Name = 'Test Account';
		insert acc;
	}
	@isTest static void test_method_one2() {
		Account acc = new Account();
		acc.Name = 'Test Account';
		acc.Picklist_Fun__c='Value 1;Value 2;Value 3';
		insert acc;
	}
	
}