trigger Acctrig on Account (after insert) {
    If(trigger.isInsert){
        list<contact> ct = new list<contact>();
        for (Account acc : trigger.new){
            contact c = new contact(lastname= acc.name,
            AccountId=acc.Id);
                    ct.add(c);
        }
            insert ct; 
    }
}