import java.util.*;

public class nhn2 {
    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        ArrayList<Integer> al = new ArrayList<Integer>();

        int num = scan.nextInt();
        FQ queue = new FQ();
        for(int i=0; i<num; i++){
            String command = scan.nextLine();
            String com[] = command.split(" ");
            if(com[0].equals("enqueue")) {
//                System.out.println("en!!");
                int element = Integer.parseInt(com[1]);
                queue.enqueue(element);
            }else if(com[0].equals("dequeue")){
//                System.out.println("de!!");
                al.add(queue.dequeue());
            }
        }

        for(int n: al){
            System.out.print(n+" ");
        }

    }
}

class FQ{
    ArrayList<Integer> save = new ArrayList<Integer>();

    void enqueue(int n){
        this.save.add(n);
    }

    int dequeue(){

        Map<Integer,Integer> hash = new HashMap<Integer, Integer>();

        for(int n : save) {
            if (hash.containsKey(n)){
                hash.put(n, hash.get(n)+1);
            }else {
                hash.put(n, 1);
            }
        }
        int max = -1;
        int key = -1;
        for(int k: hash.keySet()){
            if( max < hash.get(k)){
                max = hash.get(k);
                key = k;
//                System.out.println(max);
            }
        }

        for(int i=0; i<save.size(); i++){

//            System.out.println(save.get(i)+", "+max);
            if (save.get(i) == key){
                return save.remove(i);
            }
        }

        return -1;

    }
}
