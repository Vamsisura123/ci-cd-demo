public class QuickTempletesController {
    public QuickTemplete__c record { get; set; }

    public QuickTempletesController() {
        record = [SELECT Id, Name, Description__c FROM QuickTemplete__c WHERE Id = :ApexPages.currentPage().getParameters().get('id') LIMIT 1];
    }

    public String getDescription() {
        return record.Description__c;
    }
}