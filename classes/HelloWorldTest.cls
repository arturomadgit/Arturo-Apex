@isTest
private class HelloWorldTest {
	
	@isTest static void updateLead() {
		Lead myLead = new Lead();
		myLead.FirstName = 'Arturo';
		myLead.LastName  = 'Rodriguez';
		myLead.Company   = 'Salesforce';
		insert myLead;

		myLead.Company   = 'Labradores';
		update myLead;
	}

}