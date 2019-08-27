
import java.util.HashMap;
import java.util.HashSet;

public class Hash1 {
    static String[] sample1 = {"leo", "kiki", "eden"};
    static String[] completion1 = {"kiki", "eden"};
    String[] sample2 = {"marina", "josipa", "nikola", "vinko", "filipa"};
    static String[] sample3 = {"mislav", "stanko", "mislav", "ana"};
    static String[] completion3= {"stanko", "ana", "mislav"};

    static HashMap<String, Integer> hash = new HashMap<String,Integer>();
    public static void main(String[] args) {

        System.out.println("\""+solution(sample3, completion3)+"\""+ "는 참여자 명단에는 있지만, 완주자 명단에는 없기 때문에 완주하지 못했습니다.");

    }

    static String solution(String[] participant, String[] completion) {
        for(String s : participant){
            if(!hash.containsKey(s)) {
                hash.put(s, 1);
            }else{
                int num = hash.get(s);
                hash.put(s, num+1);
            }
        }
        for(String s : completion){
            if(hash.get(s)==1){
                hash.remove(s);
            }else{
                int num = hash.get(s);
                hash.put(s, num-1);
            }
        }
        String result = hash.keySet().iterator().next();
        return "\""+result+"\""+ "는 참여자 명단에는 있지만, 완주자 명단에는 없기 때문에 완주하지 못했습니다." ;
    }
}
