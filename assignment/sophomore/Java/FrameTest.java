import java.awt.*;
import javax.swing.*;

public class FrameTest extends JFrame {
	public static void main(String[] args) {
		FrameTest1 frame = new FrameTest1();    //컴포넌트만 배치하는 예제
	}
}
class FrameTest1 extends JFrame{
	FrameTest1(){
		setSize(220, 200);
		//setTitle()메소드 사용
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		//패널을 생성
		panel.add(new JLabel("ID:"));
		panel.add(new JTextField(10));
		//레이블과 텍스트 필드, 버튼 생성
		add(panel);
		setVisible(true);
	}
}