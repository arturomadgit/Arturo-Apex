@isTest
private class WarrantySummaryTest {
	
	@isTest static void test_method_one() {
		Case myCase = new Case();
		myCase.Status = 'new';
		myCase.Origin = 'Email';
		myCase.Product_Purchase_Date__c = Date.today();
		myCase.Product_Total_Warranty_Days__c = 10; 
		insert myCase;
	}
	

}