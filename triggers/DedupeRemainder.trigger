trigger DedupeRemainder on Account (after insert) {
    for(Account Acc : trigger.new){
        Case newCase = new Case();
        newCase.OwnerId   = '00558000001DecP';
        newCase.Subject   = 'Dedupe this account';
        newCase.AccountId = Acc.Id;
        insert newCase;
        
    }

}