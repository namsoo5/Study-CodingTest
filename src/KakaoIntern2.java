
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

//정답
public class KakaoIntern2 {
    public static void main(String[] args) {
//        System.out.println(solution("{{2},{2,1},{2,1,3},{2,1,3,4}}"));
        solution("{{1,2,3},{2,1},{1,2,4,3},{2}}");
//        solution("{{20,111},{111}}");
//        solution("{{123}}");
    }


    public static int[] solution(String s) {
        int[] sumArray = getElementsSum(s);
        int[] answer = new int[sumArray.length];

        answer[0] = sumArray[0];

        System.out.println(Arrays.toString(sumArray));
        for (int i = 1; i < answer.length; ++i) {
            answer[i] = sumArray[i] - sumArray[i - 1];
        }
        System.out.println(Arrays.toString(answer));
        return answer;
    }

    public static int[] getElementsSum(String s) {
        String subStr = s.substring(2, s.length() - 2);
//        System.out.println(subStr);
        String[] array = subStr.split("},\\{");
//        System.out.println(Arrays.toString(array));

        int[] sumArray = new int[array.length];

        for (int i = 0; i < array.length; ++i) {
            String[] elements = array[i].split(",");
//            System.out.println(Arrays.toString(elements));
//            System.out.println("----------");
            int sum = 0;
            for (int j = 0; j < elements.length; ++j) {
                sum += Integer.parseInt(elements[j]);
            }//6, 3, 10, 2
            sumArray[i] = sum;
        }

        Arrays.sort(sumArray);
//        System.out.println("*****");
//        System.out.println(Arrays.toString(sumArray));

        return sumArray;
    }
}
