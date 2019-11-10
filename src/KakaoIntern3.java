import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class KakaoIntern3 {
    public static void main(String[] args) {
        String[] user = {"frodo", "fradi", "crodo", "abc123", "frodoc"};
        String[] ban = {"fr*d*", "abc1**"};

        String[] user1 = {"frodo", "fradi", "crodo", "abc123", "frodoc"};
        String[] ban1 = {"*rodo", "*rodo", "******"};

        String[] user2 = {"frodo", "fradi", "crodo", "abc123", "frodoc"};
        String[] ban2 = {"fr*d*", "*rodo", "******", "******"};

        solution(user, ban);
        solution(user1, ban1);
        solution(user2, ban2);
    }

    static int solution(String[] user_id, String[] banned_id) {
        int answer = 0;

        Set[] arr = new HashSet[banned_id.length];
        int index = 0;

        for(String ban : banned_id){
            arr[index++] = checkId(user_id, ban);
        }

        System.out.println(Arrays.toString(arr));
        return answer;
    }

    static Set<String> checkId(String[] userId, String banId){

        Set<String> set = new HashSet<String>();

        String id = banId.replace("*", ".");
        Pattern pattern = Pattern.compile(id);

        for(String input: userId) {
            Matcher match = pattern.matcher(input);

            if(match.matches()){
                if(!set.contains(input)){
                    set.add(input);
                }
            }
        }

//        System.out.println(set.toString());
        return set;
    }

    static void combination(HashSet<String>[] setArr, int length){
//        Set<String>[] temp = new HashSet[length]();


    }

}
