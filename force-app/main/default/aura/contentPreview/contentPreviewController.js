({
    doInit : function(cmp) {
        var recordId = cmp.get("v.recordId");
        var fileId = cmp.get("v.fileId");

        cmp.set("v.params", JSON.stringify({ 
            recordId: recordId, 
            fileId: fileId,
            elementType: 'preview' 
        }));
    }
})
