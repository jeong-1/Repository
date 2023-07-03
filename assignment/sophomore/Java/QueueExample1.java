import java.util.*; 
class QueueExample1 {
	public static void main(String args[]) {
		LinkedList<String> queue = new LinkedList<String>(); 
		for(int cnt=0; cnt<args.length; cnt++)
			queue.offer(args[cnt]);
		while(!queue.isEmpty()) {
			String str = queue.poll(); 
			System.out.println(str);
		}
	}
}