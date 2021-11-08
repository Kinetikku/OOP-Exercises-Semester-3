package pacMan;

import java.awt.Image;

import javax.swing.ImageIcon;

public class Enemy{
	
	private int lifes;
	private boolean godMode;
	private Image image;
	private int width;
	private int height;
	private int posX = 100;
	private int posY = 100;
	private String imagePath;
	
	public Enemy(String imagePath) {
		this.lifes = 1;
		this.godMode = true;
		this.imagePath = imagePath;
	}
	
	public void loadImage() {
		ImageIcon ii = new ImageIcon(imagePath);
		image = ii.getImage();
		
		width = image.getWidth(null);
		height = image.getHeight(null);
	}
	
	public int getLifes() {
		return lifes;
	}

	public void setLifes(int lifes) {
		this.lifes = lifes;
	}

	public boolean getGodMode() {
		return godMode;
	}

	public void setGodMode(boolean godMode) {
		this.godMode = godMode;
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

	@Override
	public String toString() {
		return "Lifes Remaining: " + getLifes() + "\nGod Mode Active: " + getGodMode();
	}
}
