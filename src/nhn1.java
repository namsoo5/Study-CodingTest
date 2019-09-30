import java.io.*;
import java.util.*;

public class nhn1 {

    static Map<String, Integer> hash = new HashMap<String, Integer>();
    static int plus = 1;
    static int sum = 0;

    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        int num = scan.nextInt();
        String sample[] = new String[num];
        for(int i=0; i<num; i++){
            sample[i] = scan.next();
        }
//        String sample[] = {"ant", "bee", "dragonfly", "ant", "bee" };

        solution(sample);
    }

    static void solution(String[] sample) {

        for (String s : sample) {
            if (hash.containsKey(s)) {
                hash.put(s, hash.get(s) + 1);
            } else {
                hash.put(s, 1);
            }
        }

        boolean tag = check();

        if (tag) {
            System.out.println("Y");
        } else {
            System.out.println("N");
        }

        System.out.println(sum);
        System.out.println(hash.size());
    }

    static boolean check(){
        Set<String> set = hash.keySet();
        int limit = set.size()-1;

        for(String s : set){
           sum += hash.get(s);
        }

        int aver = sum/set.size();
        int count = 0;
        int big = 0;
        for(String s : set){
            if(aver > hash.get(s)){
//                System.out.println("count up");
                count++;
            }else if (aver < hash.get(s)){
//                System.out.println("big up");
                big ++;
            }
        }

//        System.out.println(count +", "+ big);
        if(count > 1 || big == limit-1){
            return false;
        }else{
            if(count == 1 || big == limit){
//                System.out.println("count!");
                sum++;
            }
            return true;
        }



    }
}
