package pacMan;
import java.awt.Canvas;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Graphics;
import java.awt.Toolkit;
import javax.swing.JFrame;



public class MainMenu extends Canvas{
	
	private static Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();

	public static void main(String[] args) {
		Player pacman = new Player();
		Enemy enemy = new Enemy("Assets/EnemyOne.png");
		Coin coin  = new Coin();
		
		
		JFrame frame = new JFrame("Pacman Game");
		Canvas canvas = new Canvas();
		
		canvas.setSize(screenSize.width, screenSize.height);
		frame.add(canvas);
		frame.pack();
		frame.setVisible(true);
	}
	
	public void paint(Graphics g) {
		g.fillOval(500, 500, 600, 600);
		g.setColor(Color.red);
	}

}
