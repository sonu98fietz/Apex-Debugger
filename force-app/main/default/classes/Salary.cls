public class Salary {  
    private integer no_of_hours;	
    private integer rs_per_hour;	
    private integer total_salary;	
    
    public Salary(){
        system.debug('Hello from Constructor');
    }
    
    public Salary(string str){
        system.debug('Hello from Constructor---->'+str);
    }
    
    public void set(integer n, integer r)	{   
                  
        no_of_hours = n;   
        rs_per_hour = r;  
    }
    
    public void set(string n, string r)	{   
                
        system.debug('Value would be concate--->'+n+r); 
    }
    
     public void set(string n)	{   
                 
        system.debug('Value would be concate--->'+n); 
    }
    
    public void show()   {   
        total_salary = no_of_hours*rs_per_hour;   
        System.debug('total salary = '+total_salary);  
    } 
    
}