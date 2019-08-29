import java.util.Arrays;

//실패율
public class Blind2018_2 {

    public static void main(String[] args) {
        int n1 = 5;
        int n2 = 4;

        int[] stages1 = {2, 1, 2, 6, 2, 4, 3, 3};
        int[] stages2 = {4, 4, 4, 4, 4};

        solution(n1, stages1);
    }

    static int[] solution(int N, int[] stages) {
        int[] answer = {};

        answer = failRate(N, stages);

        System.out.println("answer:" + Arrays.toString(answer));
        return answer;
    }

    static int[] failRate(int N, int[] stages) {
        int result[] = new int[N];
        int[] count = new int[N + 1];
        int[] people = new int[N + 1];
        Sample[] fail = new Sample[N];

        for (int failStage : stages) {
            if (failStage == N + 1) {
                continue;
            }
            count[failStage]++;
        }

        people[0] = stages.length;
        for (int i = 1; i < N + 1; i++) {
            people[i] = people[i - 1] - count[i - 1];
        }

        for (int i = 0; i < N; i++) {
            double f = (double) count[i+1] / people[i+1];
            fail[i] = new Sample(f,i);
        }

        Arrays.sort(fail);
//        System.out.println(Arrays.toString(count));
//        System.out.println(Arrays.toString(people));
        int index = 0;
        for(Sample obj: fail){
            System.out.print(obj.failRate+", ");
            result[index++] = obj.index;
        }

        return result;
    }
}

class Sample implements Comparable{
    double failRate;
    int index;

    Sample(double f, int i){
        this.failRate = f;
        this.index = i+1;
    }

    @Override
    public int compareTo(Object o) {
        Sample obj = (Sample) o;

        if(this.failRate > obj.failRate) {
            return -1;
        }else if (this.failRate == obj.failRate){
            if(this.index > obj.index){
                return 1;
            }else{
                return -1;
            }
        }else{
            return 1;
        }





//        if(this.failRate > obj.failRate) {
//            return -1;
//        }else{
//            return 1;
//        }
    }
}