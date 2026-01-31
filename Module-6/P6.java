import syntaxtree.*;
import visitor.*;

public class P6 {
   public static void main(String [] args) {
      try {
         Node root = new MiniRAParser(System.in).Goal();
         GJDepthFirst<Object, Object> v = new GJDepthFirst<>();
         root.accept(v, null);
      }
      catch (ParseException e) {
         System.out.println(e.toString());
      }
   }
} 



