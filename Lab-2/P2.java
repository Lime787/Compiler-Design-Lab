import syntaxtree.*;
import visitor.*;

public class P2 {
   public static void main(String [] args) {
      try {
         Node root = new MiniJavaParser(System.in).Goal();
         GJNoArguDepthFirst<Object> v = new GJNoArguDepthFirst<Object>();
         root.accept(v);
         // System.out.println(v.importPresent);
         // System.out.println(v.functionUsed);
         // System.out.println(v.class_vars);
         // System.out.println(v.class_functions);
         if (!v.importPresent && v.functionUsed) 
         {
            System.out.println("Symbol not found");
            return;
         }

         GJDepthFirst<Object, Object> v2 = new GJDepthFirst<>();
         v2.class_vars = v.class_vars;
         v2.class_functions = v.class_functions;
         v2.parent_class = v.parent_class;
         root.accept(v2, null);
         System.out.println("Program type checked successfully");
      }
      catch (ParseException e) {
         System.out.println(e.toString());
      }
   }
} 

