import syntaxtree.*;
import visitor.*;

public class P4 {
   public static void main(String [] args) {
      try {
         Node root = new MiniIRParser(System.in).Goal();
         GJNoArguDepthFirst<Object> v0 = new GJNoArguDepthFirst<>();
         root.accept(v0);
         GJDepthFirst<Object, Object> v = new GJDepthFirst<>();
         v.count = v0.count;
         root.accept(v, null);
      }
      catch (ParseException e) {
         System.out.println(e.toString());
      }
   }
} 



