trigger CreateTask on Account (after insert) {
	for(Account acc : Trigger.new){
		if(acc.Picklist_Fun__c != null){
		List<String> picklistValues = acc.Picklist_Fun__c.split(';');
		for(String value : picklistValues){
			Task t = new Task();
			t.Subject = value;
			t.WhatId = acc.Id;
			insert t;
			}
		}
	}
}