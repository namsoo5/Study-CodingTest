//정답
public class KakaoIntern5 {
    public static void main(String[] args) {

        int[] stones = {2, 4, 5, 3, 2, 1, 4, 2, 5, 1};
        int[] stones1 = {0,0,0,0,0,0,0,0};
        int[] stones2 = {1,2,3,4,5,6,7,8,9};
        solution1(stones, 3);
    }

    static int solution1(int[] stones, int k) {
        int answer = 0;

        while (true) {
            int skip = 0;
            for(int i =0; i<stones.length; i++){
                if(stones[i] != 0){
                    stones[i]--;
                    skip = 0;
                }else{
                    skip++;
                }

                if(skip == k){
                    break;
                }
            }
            if(skip == k){
                break;
            }

            answer++;
        }

        System.out.println(answer);
        return answer;
    }


}
