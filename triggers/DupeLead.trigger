trigger DupeLead on Lead (before insert, before update) {
	for(Lead myLead : Trigger.new){
		if (myLead.FirstName != null && myLead.LastName != null){
			List<Lead> dupeLeads = [SELECT FirstName,LastName FROM Lead WHERE FirstName = :myLead.FirstName AND LastName = :myLead.LastName];
			List<Contact> dupeContacts = [SELECT FirstName,LastName FROM Contact WHERE FirstName = :myLead.FirstName AND LastName = :myLead.LastName];
				if(dupeLeads.size()>0){
					myLead.Dupe_Lead_Found__c = True;
				}else{
					myLead.Dupe_Lead_Found__c = False;
				}
				

				if(dupeContacts.size()>0){
					myLead.Dupe_Contact_Found__c = True;
				}else{
					myLead.Dupe_Contact_Found__c = False;
				}
				
		}
	}
}