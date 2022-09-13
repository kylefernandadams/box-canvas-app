public with sharing class CanvasAppLifecycleHandler implements Canvas.CanvasLifecycleHandler {

    public Set<Canvas.ContextTypeEnum> excludeContextTypes(){
        Set<Canvas.ContextTypeEnum> excluded = new Set<Canvas.ContextTypeEnum>();

        return excluded;
    }

    public void onRender(Canvas.RenderContext renderContext) {
        Canvas.ApplicationContext app = renderContext.getApplicationContext();
        Canvas.EnvironmentContext env = renderContext.getEnvironmentContext();

        System.debug('Entity fields: ' + env.getEntityFields());
        System.debug('Location URL: ' + env.getLocationUrl());
        System.debug('Display Location: ' + env.getDisplayLocation());
        System.debug('Sub Location: ' + env.getSublocation());
        System.debug('Params as json: ' + env.getParametersAsJSON());
    
        Set<String> fields = new Set<String>{'*', 'Name'};
        env.addEntityFields(fields);
        Map<String, Object> previousParams = (Map<String, Object>) JSON.deserializeUntyped(env.getParametersAsJSON());

        String recordId = String.valueOf(previousParams.get('recordId'));
        System.debug('Found record id: ' + recordId);

        String folderId = String.valueOf(previousParams.get('folderId'));
        System.debug('Previous params - folder id: ' + folderId);

        if(String.isEmpty(folderId)){
            // Get the folder id
            box__FRUP__c frup = [SELECT box__Folder_ID__c, box__Record_ID__c FROM box__FRUP__c WHERE box__Record_ID__c = :recordId LIMIT 1];
            folderId = frup.box__Folder_ID__c;
            System.debug('Found folder with id: ' + folderId);
        }
       
        Id recordIdValue = Id.valueOf(recordId);
        Schema.SObjectType sobjectType = recordIdValue.getSObjectType();
        String sobjectName = sobjectType.getDescribe().getName();

        SObject record = Database.query('Select Id, Name From ' + sobjectName + ' Where Id = :recordId');
        System.debug('Found object: ' + record);
        previousParams.put('recordName', record.get('Name'));

        String salesforceField = String.valueOf(previousParams.get('salesforceField'));
        if(!String.isEmpty(salesforceField)) {
            String salesforceFieldValue = String.valueOf(record.get(salesforceField));
            System.debug('Found salesforce field name: ' + salesforceField + ' and field value: ' + salesforceFieldValue);
            previousParams.put('salesforceField', salesforceField);
        }

        if(!String.isEmpty(folderId)) {
            // Add the folder ID from the FRUP record to send back to our React app
            previousParams.put('folderId', folderId);
        }
    
        env.setParametersAsJSON(JSON.serialize(previousParams));
    }
}