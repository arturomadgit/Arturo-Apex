@isTest
private class DupeLeadTest {
	
	@isTest static void test_method_one() {
		
		Lead myLead      = new Lead();
		myLead.FirstName = 'Arturo';
		myLead.LastName  = 'Rodriguez';
		myLead.Company   = 'Salesforce';
		insert myLead;

		Contact myContact   = new Contact();
		myContact.FirstName = 'Elena';
		myContact.LastName  = 'Paredes';
		insert myContact;

		Lead dupeLead = new Lead();
		dupeLead.FirstName = 'Arturo';
		dupeLead.LastName  = 'Rodriguez';
		dupeLead.Company   = 'Salesforce';
		insert dupeLead;

		Lead dupeLead2 = new Lead();
		dupeLead2.FirstName = 'Elena';
		dupeLead2.LastName  = 'Paredes';
		dupeLead2.Company   = 'Salesforce';
		insert dupeLead2;

}
}