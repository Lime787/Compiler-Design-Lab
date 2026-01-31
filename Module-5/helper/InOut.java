package helper;
import java.util.*;

public class InOut {
    public TreeMap<Integer, TreeSet<Integer>> in;
    public TreeMap<Integer, TreeSet<Integer>> out;

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("InOut {\n");

        sb.append("  in = ").append(in).append(",\n");
        sb.append("  out  = ").append(out).append(",\n");

        sb.append("}");
        return sb.toString();
    }
}
