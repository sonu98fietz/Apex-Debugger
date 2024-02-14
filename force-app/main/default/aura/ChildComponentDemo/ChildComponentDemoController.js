({
	childComponentEventCall : function(component, event, helper) {
        var cmpEvent = component.getEvent("cmpEvent");
        cmpEvent.setParams({"message":component.get("v.strText")});
		cmpEvent.fire();
	}
})