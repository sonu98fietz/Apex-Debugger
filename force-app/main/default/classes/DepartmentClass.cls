public class DepartmentClass {
    public void additems(){
        Map<String,Double> prodMap = new Map<String,Double>();
        prodMap.put('Iphone',3000);
        prodMap.put('OnePluse',1000.50);
        prodMap.put('Samsung',2000);
        prodMap.put('Nokia',1000);
        prodMap.put('Lava',1000);
        set<String> id = new set<String>();
        id = prodMap.keySet();
        for(String val: id){
            system.debug(val+'price = '+prodMap.get(val));
        }
        
        removeitems(prodMap);
    }
    public void removeitems(Map<String,Double> removeitemMap){
        if(removeitemMap.containskey('Lava')){
            removeitemMap.remove('Lava');
        }
        calculateTotal(removeitemMap);
    }
    public void calculateTotal(Map<String,Double> totalprodpriceMap){
        list<Double> totalpriceList = new list<Double>();
        Double totalAmount = 0;
        for(Double tp : totalprodpriceMap.values()){
            totalAmount= totalAmount + tp;
        }
        System.debug('totalAmount--Final-->'+totalAmount);
    }
}