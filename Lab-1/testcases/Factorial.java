#define NUM() (10+0)
#define ONE() (1+0)
#define SUM(a, b) (a+b)
class Factorial{
    public static void main(String[] a){
        System.out.println(new Fac().ComputeFac(SUM(6, 4)));
    }
}

class Fac {
    public int ComputeFac(int num){
        boolean num_aux ;
        num_aux = ! true && false;
        num_aux = !current_node.GetHas_Right() && 
			    !current_node.GetHas_Left();
        if ((num <= 1)&&(num != 1))
            num_aux = ONE() ;
        else
            num_aux = num * (this.ComputeFac(num-1)) ;
        return num_aux ;
    }
}

