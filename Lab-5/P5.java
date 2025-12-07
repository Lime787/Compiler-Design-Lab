import java.util.HashMap;
import java.util.TreeSet;

import syntaxtree.*;
import helper.*;
import visitor.*;
import java.util.*;

class VariableObject {
   Integer temp_no;
   Integer start_point;
   Integer end_point;

   VariableObject(Integer t) {
      temp_no = t;
      start_point = 0;
      end_point = 0;
   }
};

class LinearScanRegisterAllocation {
   TreeSet<VariableObject> active = new TreeSet<>((a, b) -> ((a.end_point - b.end_point) == 0 ? (a.temp_no - b.temp_no) : (a.end_point - b.end_point)));
   TreeSet<VariableObject> intervals = new TreeSet<>((a, b) -> ((a.start_point - b.start_point) == 0 ? (a.temp_no - b.temp_no) : (a.start_point - b.start_point)));

   TreeSet<String> avaliable_registers = new TreeSet<>();
   public HashMap<Integer, String> register_map = new HashMap<>();
   public HashMap<Integer, Integer> stack_map = new HashMap<>();
   int stack_index = -1;
   
   Integer next_stack_index() {
      stack_index++;
      return stack_index;
   }

   LinearScanRegisterAllocation(HashMap<Integer, VariableObject> inp) {
      for (Map.Entry<Integer, VariableObject> entry : inp.entrySet()) {
         intervals.add(entry.getValue());
      }
      avaliable_registers.addAll(List.of("t0", "t1", "t2", "t3", "t4", "t5", "t6", "t7", "s0", "s1", "s2", "s3", "s4", "s5", "s6", "s7", "t8", "t9"));
   }

   public void start() {
      for (VariableObject obj : intervals) {
         expire_old_intervals(obj.start_point);
         if (avaliable_registers.size() == 0) {
            spill_at_interval(obj);
         } else {
            register_map.put(obj.temp_no, avaliable_registers.getFirst());
            avaliable_registers.removeFirst();
            active.add(obj);
         }
      }
   }

   void expire_old_intervals(Integer st) {
      Iterator<VariableObject> it = active.iterator();
      while (it.hasNext()) {
         VariableObject obj = it.next();
         if (obj.end_point >= st) return;
         int t = obj.temp_no;
         it.remove(); 
         avaliable_registers.add(register_map.get(t));
      }
   }

   void spill_at_interval(VariableObject i) {
      VariableObject last = active.getLast();
      if (last.end_point > i.end_point) {
         register_map.put(i.temp_no, register_map.get(last.temp_no));
         register_map.remove(last.temp_no);
         stack_map.put(last.temp_no, next_stack_index());
         active.removeLast();
         active.add(i);
      } else {
         stack_map.put(i.temp_no, next_stack_index());
      }
   }


};

class LivenessAnalysis {
   HashMap<String, UseDef> methodMap;
   HashMap<String, HashMap<Integer, TreeSet<Integer>>> successorMap;
   HashMap<String, Integer> method_sline_map;
   HashMap<String, Integer> method_eline_map;
   int line_count;
   HashMap<String, InOut> InOutMap;

   LivenessAnalysis(HashMap<String, UseDef> map, int line_ct, HashMap<String, HashMap<Integer, TreeSet<Integer>>> map2, HashMap<String, Integer> map3, HashMap<String, Integer> map4) {
      this.line_count = line_ct;
      this.methodMap = map;
      this.successorMap = map2;
      this.method_sline_map = map3;
      this.method_eline_map = map4;
   }

   public HashMap<String, InOut> start() {
      InOutMap = new HashMap<>();
      for (Map.Entry<String, UseDef> entry : methodMap.entrySet()) {
         // System.out.println(entry.getKey());
         InOut obj = new InOut();
         obj.in = new TreeMap<>();
         obj.out = new TreeMap<>();
         for (int i = method_sline_map.get(entry.getKey()); i < method_eline_map.get(entry.getKey()); i++) {
            obj.in.put(i, new TreeSet<>());
            obj.out.put(i, new TreeSet<>());  
         }
         // System.out.println(entry.getKey());
         perform_liveness(obj, entry.getValue(), successorMap.get(entry.getKey()), method_sline_map.get(entry.getKey()), method_eline_map.get(entry.getKey()));
         InOutMap.put(entry.getKey(), obj);
      }
      return InOutMap;  
   }

   boolean check (InOut old_, InOut new_) {
      // System.err.println("noticw");
      if (!old_.in.equals(new_.in)) {
         // System.err.println("chk1");
         return false;
      }
      // System.err.println("yo");
      if (!old_.out.equals(new_.out)) {
         // System.err.println("chk2");
         return false;
      }
      return true;
   }

   public void perform_liveness(InOut obj, UseDef input, HashMap<Integer, TreeSet<Integer>> succ_map, Integer start_point, Integer end_point) {
      // System.out.println("wass");
      InOut curr = obj;
      InOut prev = new InOut();
      prev.in = new TreeMap<>();
      prev.out = new TreeMap<>();
      while (!check(curr, prev)) {
         // System.out.println("lol");
         prev.in.clear();
         prev.out.clear();
         for (int i = end_point - 1; i >= start_point; i--) {
            // System.out.println(i);
            prev.in.computeIfAbsent(i, k -> new TreeSet<>()).addAll(curr.in.get(i));
            prev.out.computeIfAbsent(i, k -> new TreeSet<>()).addAll(curr.out.get(i));
            curr.out.get(i).clear();;
            curr.in.get(i).clear();;
            // System.out.println("hi");
            if (succ_map.containsKey(i)) {
               for (Integer succs : succ_map.get(i)) {
                  if (curr.in.containsKey(succs)) curr.out.get(i).addAll(curr.in.get(succs));
               }
            } 
            // System.out.println(i);
            if (input.used_by_line.containsKey(i)) curr.in.get(i).addAll(input.used_by_line.get(i));
            // System.err.println("hi");
            TreeSet<Integer> temp = new TreeSet<>();
            temp.addAll(curr.out.get(i));
            // System.err.println("hello");
            if (input.def_by_line.containsKey(i)) temp.removeAll(input.def_by_line.get(i));
            // System.err.println("wowo");
            curr.in.get(i).addAll(temp);
            // System.err.println("loll");
         }
      }
   }
};



public class P5 {
   public static void main(String [] args) {
      try {
         
         Node root = new microIRParser(System.in).Goal();
         FirstPass<Object, Object> v1 = new FirstPass<>();
         root.accept(v1, null);
         // System.out.println(v1.methodMap.toString());
         // System.out.println(v1.successorMap);
         // System.out.println(v1.method_sline_map);
         // System.out.println(v1.method_eline_map);
         LivenessAnalysis obj1 = new LivenessAnalysis(v1.methodMap, v1.line_count, v1.successorMap, v1.method_sline_map, v1.method_eline_map);
         // System.out.println("hi");
         HashMap<String, InOut> InOutMap = obj1.start();
         // System.out.println("hello");
         // System.out.println(InOutMap.toString());
         HashMap<String, HashMap<Integer, String>> register_mapping = new HashMap<>();
         HashMap<String, HashMap<Integer, Integer>> stack_mapping = new HashMap<>();
         for (Map.Entry<String, InOut> entry : InOutMap.entrySet()) {
            HashMap<Integer, VariableObject> temp = generate_intervals(entry.getValue());
            var temp2 = new LinearScanRegisterAllocation(temp);
            temp2.start();
            register_mapping.put(entry.getKey(), temp2.register_map);
            stack_mapping.put(entry.getKey(), temp2.stack_map);
         }

         // System.out.println(register_mapping);
         // System.out.println(stack_mapping);
         SecondPass<Object, Object> v2 = new SecondPass<>();
         v2.register_mapping = register_mapping;
         v2.stack_mapping = stack_mapping;
         v2.method_max_arg_mapping = v1.method_max_arg_mapping;
         root.accept(v2, null);
      }
      catch (ParseException e) {
         System.out.println(e.toString());
      }
      catch (Exception e) {
         System.out.println(e.toString());
      }
   }

   static HashMap<Integer, VariableObject> generate_intervals(InOut input) {
      HashMap<Integer, VariableObject> res = new HashMap<>();
      for (Map.Entry<Integer, TreeSet<Integer>> entry : input.in.entrySet()) {
         for (Integer val : entry.getValue()) {
            res.computeIfAbsent(val, k -> new VariableObject(k)).start_point = Math.min (res.get(val).start_point, entry.getKey());
            res.get(val).end_point = Math.max(res.get(val).end_point, entry.getKey());
         }
      }
      for (Map.Entry<Integer, TreeSet<Integer>> entry : input.out.entrySet()) {
         for (Integer val : entry.getValue()) {
            res.computeIfAbsent(val, k -> new VariableObject(k)).start_point = Math.min (res.get(val).start_point, entry.getKey());
            res.get(val).end_point = Math.max(res.get(val).end_point, entry.getKey());
         }
      }
      return res;
   }
} 



