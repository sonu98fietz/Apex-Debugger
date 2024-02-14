({
	fetchAccounts : function(component, event, helper) {
		var action = component.get("c.fetchAccounts");
        action.setCallback(this,function(a){
			component.set("v.accList",a.getReturnValue());
             });
    $A.enqueueAction(action);
	}
})