({
    doInit : function(cmp) {
        var recordId = cmp.get("v.recordId");
        var folderId = cmp.get("v.folderId");

        cmp.set("v.params", JSON.stringify({ 
            recordId: recordId, 
            folderId: folderId,
            elementType: 'uploader' 
        }));
    }
})
