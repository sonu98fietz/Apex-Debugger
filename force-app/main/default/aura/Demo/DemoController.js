({
	doInit : function(component, event, helper) {
        component.set("v.strText","monu");
        helper.fetchAccounts(component, event, helper);
	},
    clickEdit: function(component, event, helper){
        var changedText = component.get("v.strText");
        component.set("v.changedText",changedText);
        alert('Changed text' + component.get("v.changedText"));
    }
})