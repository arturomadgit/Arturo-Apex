trigger WarrantySummary2 on Case (before insert) {

	for(Case myCase : Trigger.new){

		if(myCase.Product_Purchase_Date__c == null || myCase.Product_Total_Warranty_Days__c == null){
			myCase.Warranty_Summary__c  = 'Not enough info to calculate the warranty. Please populate the fields.';
		}else{

		String purchaseDate         = myCase.Product_Purchase_Date__c.format();
		Integer warrantyDays        = myCase.Product_Total_Warranty_Days__c.intValue();
		Decimal warrantyPercentage  = (100 * (myCase.Product_Purchase_Date__c.daysBetween(Date.today()) 
										/ myCase.Product_Total_Warranty_Days__c)).setScale(2);	
		String createdDate          = Datetime.now().format();
		Boolean hasExtendedWarranty = myCase.Product_Has_Extended_Warranty__c;

		// Populate summary field
		myCase.Warranty_Summary__c  = 'Product purchased on ' + purchaseDate + ' '
		                            + 'and case created on ' + createdDate + ' \n'
		                            + 'Warranty is for ' + warrantyDays + ' days '
		                            + 'and is ' + warrantyPercentage + '% through its warranty period.\n'
		                            + 'Extended warranty: ' + hasExtendedWarranty + '\n'
		                            + 'Have a nice day!';
		}

	}

}