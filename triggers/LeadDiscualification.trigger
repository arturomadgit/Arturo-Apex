trigger LeadDiscualification on Lead (before insert, before update) {
	for(Lead myLead : Trigger.new){

		// Creo las variables que almacenan el nombre.
		String firstName = myLead.FirstName;
		String lastName = myLead.LastName;
		String testWord = 'test';

		// Compruebo si alguno de los nombres es null y si no lo es lo normalizo.
		if(myLead.FirstName != null){
		firstName = myLead.FirstName.toLowerCase();
	}
		if(myLead.LastName != null){
		lastName = myLead.LastName.toLowerCase();
	}
		
		// Compruebo si el nombre contiene test.
		if(firstName == testWord || lastName == testWord){
			myLead.Status = 'Discualified';
		}
	}

}