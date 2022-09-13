({
    doInit : function(cmp) {
        var recordId = cmp.get("v.recordId");
        var folderId = cmp.get("v.folderId");
        var boxEnterpriseId = cmp.get("v.boxEnterpriseId");
        var boxMdTemplateKey = cmp.get("v.boxMdTemplateKey");
        var boxMdQueryFieldKey = cmp.get("v.boxMdQueryFieldKey");
        var boxMdQueryOperator = cmp.get('v.boxMdQueryOperator');
        var salesforceField = cmp.get('v.salesforceField');
        var boxMdColumnFieldKeys = cmp.get("v.boxMdColumnFieldKeys");

        cmp.set("v.params", JSON.stringify({ 
            recordId: recordId, 
            folderId: folderId,
            boxEnterpriseId: boxEnterpriseId,
            boxMdTemplateKey: boxMdTemplateKey,
            boxMdQueryFieldKey: boxMdQueryFieldKey,
            boxMdQueryOperator: boxMdQueryOperator,
            salesforceField: salesforceField,
            boxMdColumnFieldKeys: boxMdColumnFieldKeys,
            elementType: 'metadata' 
        }));
    }
})
