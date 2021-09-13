//문자열을 입력 받고 토큰 분리하여 출력하는 프로그램
import java.util.Arrays;
import java.util.StringTokenizer;

class StringTokenizerExample1{
	public static void main (String args[]) {
		String str = Arrays.toString(args);		//문자열 배열인 args를 문자열로 바꾸어줌
		
		//문자 '[', ']'를 모두 공백으로 바꾸어줌
		str = str.replace('[', ' ');
		str = str.replace(']', ' ');

		StringTokenizer stok = new StringTokenizer(str, ",");	//문자열 str로부터 토큰을 추출
		while(stok.hasMoreTokens()){		//토큰이 없다면 while문을 빠져나감
			String word = stok.nextToken();	//stok에 존재하는 토큰을 하나씩 리턴
			System.out.println(word);		//토큰 출력
		}
	}
}
