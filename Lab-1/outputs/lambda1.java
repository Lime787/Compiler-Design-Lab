import java.util.function.Function;

class Main {
    public static void main (String[] args) {
        System.out.println(new test().A(5));
    }
}

class test {
    public int A(int x) {
        Function<Integer,Integer> inc;
        inc = (x) -> x + 1;
        return inc.apply(x);
    }

}

// Failed to parse macrojava code.
