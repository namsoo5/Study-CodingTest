import java.util.HashSet;
import java.util.Set;

//정답
public class KakaoIntern4 {
    public static void main(String[] args) {
        long[] roomNum = {1,3,4,1,3,1};
        solution(10, roomNum);

    }

    static long[] solution(long k, long[] room_number){
        long[] result = new long [room_number.length];

        Set<Long> chargedRoom = new HashSet<>();

        for(int i = 0; i < room_number.length; ++i){
            result[i] = assignRoom(chargedRoom, k, room_number[i]);
        }

        return result;
    }

    static long assignRoom(Set<Long> chargedRoom, long k, long wantRoom){
        if (wantRoom < 1 || wantRoom > k) {
            System.exit(-1);
        }

        if (chargedRoom.contains(wantRoom)) {
            return assignRoom(chargedRoom, k, wantRoom + 1);
        }

        chargedRoom.add(wantRoom);
        return wantRoom;
    }
}
