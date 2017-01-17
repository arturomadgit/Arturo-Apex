trigger CounterPicklistValues on Account (before insert, before update) {
	for(Account myAccount : Trigger.new){
		
		if(myAccount.Picklist_Fun__c != null){
			List<String> picklistValues = myAccount.Picklist_Fun__c.split(';');
			Integer counter = picklistValues.size();
			myAccount.Counter__c = counter;
		}else{
			myAccount.Counter__c = 0;
			}
			
		}
	}