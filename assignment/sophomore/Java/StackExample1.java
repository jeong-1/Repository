import java.util.*; 
class StackExample1 {
	public static void main(String args[]) {
		LinkedList<String> stack = new LinkedList<String>(); 
		for(int cnt=0; cnt<args.length; cnt++) //args.size는 안됨
			stack.addLast(new String(args[cnt]));
		while(!stack.isEmpty()) {
			String s = stack.removeLast(); 
			System.out.println(s);
		}
	}
}
