import java.awt.*;
import javax.swing.*;

public class FrameTest extends JFrame {
	public static void main(String[] args) {
		FrameTest1 frame = new FrameTest1();    //������Ʈ�� ��ġ�ϴ� ����
	}
}
class FrameTest1 extends JFrame{
	FrameTest1(){
		setSize(220, 200);
		//setTitle()�޼ҵ� ���
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		//�г��� ����
		panel.add(new JLabel("ID:"));
		panel.add(new JTextField(10));
		//���̺�� �ؽ�Ʈ �ʵ�, ��ư ����
		add(panel);
		setVisible(true);
	}
}