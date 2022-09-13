({
    doInit : function(cmp) {
        var recordId = cmp.get("v.recordId");
        var folderId = cmp.get("v.folderId");
        var slackAppToken = cmp.get("v.slackAppToken");


        cmp.set("v.params", JSON.stringify({ 
            recordId: recordId, 
            folderId: folderId,
            slackAppToken: slackAppToken,
            elementType: 'picker' 
        }));
    }
})
