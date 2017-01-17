@isTest
private class DedupeReminderTest {
	
	@isTest static void createAccount() {

		Profile p = [SELECT Id FROM Profile WHERE Name='Standard User'];

		User u = new User();
		u.Alias = 'standt'; 
		u.Email='standarduser@testorg.com'; 
        u.EmailEncodingKey='UTF-8'; 
        u.LastName='Testing'; 
        u.LanguageLocaleKey='en_US'; 
        u.LocaleSidKey='en_US'; 
        u.ProfileId = p.Id; 
        u.TimeZoneSidKey='America/Los_Angeles'; 
        u.UserName='internusertestclass@testorg.com';
        insert u;

		Account acc = new Account();
		acc.Name = 'Nike';
		insert acc;

	}
	
}