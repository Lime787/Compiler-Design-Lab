import syntaxtree.*;
import visitor.*;
import java.util.*;

public class P3 {

   public static String no_parent = "no_parent_630";
   public static String mid_name = "_ved_";
   public static HashMap<String, HashMap<String, Integer>> class_var_map = new HashMap<>();
   public static HashMap<String, HashMap<String, Integer>> class_method_map = new HashMap<>();

   public static void dfs(HashMap<String, HashSet<String>> adjList, HashMap<String, Integer> visited, ArrayList<String> res, String u) {
      visited.put(u, 1);
      for (String child : adjList.get(u)) {
         dfs(adjList, visited, res, child);
      }
      res.add(u);
   }

   public static ArrayList<String> topo_sort(HashMap<String, String> parent) {
      HashMap<String, HashSet<String>> adjList = new HashMap<>();
      HashMap<String, Integer> visited = new HashMap<>();
      ArrayList<String> res = new ArrayList<>();
      for (Map.Entry<String, String> entry : parent.entrySet()) {
         String parent_ = entry.getValue();
         String child = entry.getKey();
         if (!parent_.equals(no_parent)) adjList.computeIfAbsent(parent_, k -> new HashSet<>()).add(child);
         adjList.computeIfAbsent(child, k -> new HashSet<>());
         visited.put(child, 0);
      }
      
      for (Map.Entry<String, String> entry : parent.entrySet()) {
         String u = entry.getKey();
         if (visited.get(u) == 0) dfs(adjList, visited, res, u);
      }

      return res;
   }

   public static void fill_class_maps(HashMap<String, ArrayList<String>> class_vars, HashMap<String, ArrayList<String>> class_funcs, HashMap<String, String> parent, ArrayList<String> reverse_topo_sort) {
      for (String class_name : reverse_topo_sort.reversed()) {
         ArrayList<String> vars = class_vars.get(class_name);
         ArrayList<String> methods = class_funcs.get(class_name);
         HashMap<String, Integer> var_mapping = new HashMap<>();
         HashMap<String, Integer> method_mapping = new HashMap<>();
         
         if (parent.get(class_name).equals(no_parent)) {
            int count = 0;
            for (String var_ : vars) {
               count++;
               var_mapping.put(class_name + mid_name + var_, count);
            }
            count = 0;
            for (String method_ : methods) {
               method_mapping.put(class_name + mid_name + method_, count);
               count++;
            }
         } else {
            var_mapping.putAll(class_var_map.get(parent.get(class_name)));
            method_mapping.putAll(class_method_map.get(parent.get(class_name)));
            int count = var_mapping.size();
            for (String var_ : vars) {
               count++;
               var_mapping.put(class_name + mid_name + var_, count);
            }
            count = method_mapping.size();
            for (String method_ : methods) {
               String parent_ = parent.get(class_name);
               boolean check = true;
               while (!parent_.equals(no_parent)) {
                  if (method_mapping.containsKey(parent_ + mid_name + method_)) {
                     check = false;
                     int ct = method_mapping.get(parent_ + mid_name + method_);
                     method_mapping.remove(parent_ + mid_name + method_);
                     method_mapping.put(class_name + mid_name + method_, ct);
                     break;
                  }
                  parent_ = parent.get(parent_);
               }

               if (check) {
                  method_mapping.put(class_name + mid_name + method_, count);
                  count++;
               }
            } 
         }
         class_var_map.put(class_name, var_mapping);
         class_method_map.put(class_name, method_mapping);
      }
   }
   public static void main(String [] args) {
      try {
         Node root = new MiniJavaParser(System.in).Goal();
         
         GJNoArguDepthFirst<Object> v0 = new GJNoArguDepthFirst<>();
         root.accept(v0);

         GJDepthFirst_firstPass<Object, Object> v1 = new GJDepthFirst_firstPass<Object, Object>();
         v1.no_parent = no_parent;
         root.accept(v1, null);
         ArrayList<String> reverse_topo_sort = topo_sort(v1.parent);
         fill_class_maps(v1.class_vars, v1.class_funcs, v1.parent, reverse_topo_sort);
         // System.out.println(class_var_map);
         // System.out.println(class_method_map);
         // System.out.println(reverse_topo_sort);
         // System.out.println(v.class_vars);
         // System.out.println(v.class_funcs);
         // System.out.println(v.parent);
         GJDepthFirst<Object, Object> v2 = new GJDepthFirst<>();
         v2.class_vars = v0.class_vars;
         v2.class_functions = v0.class_functions;
         v2.class_var_map = class_var_map;
         v2.class_method_map = class_method_map;
         v2.mid_name = mid_name;
         v2.no_parent = no_parent;
         v2.parent = v1.parent;
         root.accept(v2, null);
         
      }
      catch (ParseException e) {
         System.out.println(e.toString());
      }
   }
} 

