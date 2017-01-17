trigger LeadingCompetitor on Opportunity (before update, before insert) {

    for(Opportunity opp : Trigger.new){
        if (opp.Competitor_1_Price__c < opp.Competitor_2_Price__c && opp.Competitor_1_Price__c < opp.Competitor_3_Price__c){
            opp.Leading_Competitor__c = opp.Competitor_1__c;
            }else if (opp.Competitor_2_Price__c < opp.Competitor_3_Price__c && opp.Competitor_2_Price__c < opp.Competitor_1_Price__c){
                    opp.Leading_Competitor__c = opp.Competitor_2__c;
                    }else {
                    opp.Leading_Competitor__c = opp.Competitor_3__c;
                }
            
    }


}