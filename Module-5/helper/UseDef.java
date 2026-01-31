package helper;
import java.util.*;

public class UseDef {
   public TreeMap<Integer, TreeSet<Integer>> used_by_line = new TreeMap<>();
   public TreeMap<Integer, TreeSet<Integer>> def_by_line = new TreeMap<>();
   public TreeMap<Integer, TreeSet<Integer>> use_at = new TreeMap<>();
   public TreeMap<Integer, TreeSet<Integer>> def_at = new TreeMap<>();

   @Override
   public String toString() {
      StringBuilder sb = new StringBuilder();
      sb.append("UseDef {\n");

      sb.append("  used_by_line = ").append(used_by_line).append(",\n");
      sb.append("  def_by_line  = ").append(def_by_line).append(",\n");
      sb.append("  use_at       = ").append(use_at).append(",\n");
      sb.append("  def_at       = ").append(def_at).append("\n");

      sb.append("}");
      return sb.toString();
   }

};