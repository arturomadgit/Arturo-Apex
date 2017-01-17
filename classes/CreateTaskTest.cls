@isTest
private class CreateTaskTest {
	
	@isTest static void test_method_one() {
		Account acc = new Account();
		acc.Name = 'Test Acc';
		acc.Picklist_Fun__c = 'Value 1;Value 3';
		insert acc;
	}
	

	
}