import java.util.Stack;
//정답
public class KakaoIntern1 {

    static Stack<Integer> stack = new Stack<Integer>();

    public static void main(String[] args) {
        int[][] board = {{0, 0, 0, 0, 0}, {0, 0, 1, 0, 3}, {0, 2, 5, 0, 1}, {4, 2, 4, 4, 2}, {3, 5, 1, 3, 1}};
        int[] moves = {1, 5, 3, 5, 1, 2, 1, 4};
        System.out.println(solution(board, moves));
    }

    static int solution(int[][] board, int[] moves) {
        int answer = 0;

        for(int n : moves){
            answer += process(board, n-1);
        }

        return answer;
    }

    static int process(int[][] board, int n) {

        int pang = 0;

        for (int i = 0; i < board.length; i++) {
            int temp = board[i][n];
            if (temp != 0) {
                board[i][n] = 0;
                if (!stack.isEmpty() && stack.lastElement() == temp) {
                    stack.pop();
                    pang += 2;
                } else {
                    stack.push(temp);
                }
                break;
            }
        }

        return pang;

    }
}
