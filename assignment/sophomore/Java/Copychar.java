//문자들로만 이루어진 파일을 copy해 주는  프로그램
import java.io.*;

public class Copychar {
	public static void main(String args[]) {
		FileReader reader = null;
		FileWriter writer = null;
		try {
			//파일을 여는 부분	
			reader = new FileReader(args[0]);	
			writer = new FileWriter(args[1]);
			//변수 선언
			int data = 0;

			//파일을 읽어서 다른 파일에 문자를 쓰는 처리
			while(true){	
				data = reader.read();	//파일 읽어오기
				if(data == -1)	//data가 -1이면 종료
					break;
				writer.write((char) data);	//읽어온 데이터를 파일에 쓰기
			}
		}
		catch(FileNotFoundException fnfe) {	//FileReader의 생성자가 발생시키는 익셉션 처리
			System.out.println("파일이 존재하지 않습니다.");
		}
		catch(IOException ioe) {	//FileReader의 read, close 또는 FileWriter가 발생시키는 익셉션 처리
			System.out.println("파일을 읽거나 출력할 수 없습니다.");
		}
		finally {
			try {
				//파일을 닫는 메소드
				reader.close();
				writer.close();
			}
			catch (Exception e) {
			}
		}
	}
}
