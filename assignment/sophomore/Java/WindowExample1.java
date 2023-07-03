import java.awt.*;
import javax.swing.*;
class WindowExample1{
	public static void main(String[] args){
		JFrame frame = new JFrame("Hello Java Program");
		frame.setLocation(500,400);
		frame.setPreferredSize(new Dimension(300,200));
		Container contentPane = frame.getContentPane();
		JLabel label = new JLabel("Hello, Java", SwingConstants.CENTER);
		contentPane.add(label);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.pack();
		frame.setVisible(true);
	}
}