trigger SecretInformation on Case (after insert, before update) {
    List<String> keyWords = new List<String>();
    keyWords.add('Credit Card');
    keyWords.add('Social Security');
    keyWords.add('SSN');
    keyWords.add('Passport');

    String keyWordsDescription;
    for(Case myCase : Trigger.new){
        
        if(myCase.Subject != 'Child Case'){
        for(Integer i = 0; i<keyWords.size(); i++){
            if(myCase.Description != null && myCase.Description.containsIgnoreCase(keyWords.get(i))){
            keyWordsDescription = keyWordsDescription + keyWords.get(i);
            }
        }   
    }
            System.debug('Key words in the description are: ' + keyWordsDescription);

        if(keyWordsDescription!= null){
            Case childCase        = new Case();
            childCase.Subject     = 'Child Case';
            childCase.Description = keyWordsDescription;
            childCase.IsEscalated = True;
            childCase.Priority    = 'High';
            childCase.ParentId    = myCase.Id;
            insert childCase;
        }
    }

}