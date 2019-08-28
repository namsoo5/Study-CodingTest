import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;

public class Blind2018_1 {
    static HashMap<String, String> hash = new HashMap<String, String>();
    static int size=0;
    public static void main(String[] args) {
        String[] sample1 = {"Enter uid1234 Muzi",
                "Enter uid4567 Prodo",
                "Leave uid1234",
                "Enter uid1234 Prodo",
                "Change uid4567 Ryan"};

        String[] sample2 = {"Enter uid1234 Muzi",
                "Enter uid4567 Prodo",
                "Leave uid1234",
                "Enter uid1234 Prodo",
                "Change uid4567 Ryan",
                "Enter uid1357 Muzi",
                "Enter uid4567 Apeach",
                "Leave uid1234"};

        System.out.println(Arrays.toString(solution(sample2)));

    }

    static String[] solution(String[] record) {

        ArrayList<String> al = new ArrayList<String>();
        String[] temp;
        for (String s : record) {
            temp = s.split(" ");
            process(temp);

        }

        for (String s : record) {
            temp = s.split(" ");
            al.add(result(temp));
        }

        String[] answer = new String[size];
        int index = -1;
        for( int i=0; i<al.size(); i++){
            if (al.get(i)==null || al.get(i)==""){
                continue;
            }else{
                answer[++index] = al.get(i);
            }
        }
        return answer;
    }

    static void process(String[] command) {
        switch (command[0]) {
            case "Enter":
                hash.put(command[1], command[2]);
                break;
            case "Change":
                hash.put(command[1], command[2]);
                break;
            default:
                return;
        }
    }

    static String result(String[] command) {

        switch (command[0]) {
            case "Enter":
                size++;
                return hash.get(command[1]) + "님이 들어왔습니다.";

            case "Leave":
                size++;
                return hash.get(command[1]) + "님이 나갔습니다.";

            default:
                return "";
        }

    }

}
