package Programmer;

public class 가장큰수 {
    public static void main(String[] args) {
        int n1[] = {6,10,2};
        int n2[] = {3,30,34,5,9};
        System.out.println(solution(n1));
        System.out.println(solution(n2));
    }

    public static String solution(int[] numbers) {

        for(int n : numbers) {
            if (n / 10 == 0) { //0~9

            } else if (n / 100 == 0){  //10~99

            }else if (n / 1000 == 0){  // 100~999

            }else{  // 1000

            }

        }
        return "";
    }

}
