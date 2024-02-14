public class demo {
    
    public void findunited(){
        List<SObject> findunited = new List<SObject>();
        findunited =  [select id,name,phone,industry from account where name like '%united%'];
        	//	findunited = [FIND 'UNITED' IN ALL FIELDS RETURNING ACCOUNT(ID,NAME)];
        system.debug(findunited);
    }
}