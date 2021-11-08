package pacMan;

import java.awt.Image;
import javax.swing.ImageIcon;

public class Player {

	private int lifes;
	private boolean godMode;
	private int score;
	private Image image;
	private int width;
	private int height;
	private int posX = 100;
	private int posY = 100;
	
	public Player() {
		this.lifes = 3;
		this.godMode = false;
		loadImage();
	}
	
	private void loadImage() {
		ImageIcon ii = new ImageIcon("Assets/player.png");
		image = ii.getImage();
		
		width = image.getWidth(null);
		height = image.getHeight(null);
	}
	
	public void setLifes(int lifes) {
		this.lifes = lifes;
	}
	
	public int getLifes() {
		return this.lifes;
	}
	
	public void setGodMode(boolean godMode) {
		this.godMode = godMode;
	}
	
	public boolean getGodMode() {
		return this.godMode;
	}
	
	public void setScore(int score) {
		this.score = score;
	}
	
	public int getScore() {
		return this.score;
	}
	
	
	public Image getImage() {
		return image;
	}


	public int getWidth() {
		return width;
	}

	public void setWidth(int width) {
		this.width = width;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getPosX() {
		return posX;
	}

	public void setPosX(int posX) {
		this.posX = posX;
	}

	public int getPosY() {
		return posY;
	}

	public void setPosY(int posY) {
		this.posY = posY;
	}

	public String toString() {
		return "Lifes Remaining: " + getLifes() + "\nGod Mode Active: " + getGodMode() + "\nScore: " + getScore() + "\nWidth: " + getWidth() + "\nHeight: " + getHeight();
	}
	
	
}
