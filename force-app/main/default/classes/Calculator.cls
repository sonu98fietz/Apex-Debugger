public class Calculator {
    private Integer a;
    private Integer b;
    Private Integer value;   
    Public Calculator(Integer x,Integer y){
        a=x;
        b=y;
        sum();
        System.debug('answer = '+value);
    }
    Public void sum(){
        value = a+b;
         mul();
    }
    Public void mul(){
       value = value*100; 
       diff();
    }
    public void diff(){
       value = value-100; 
    }
}