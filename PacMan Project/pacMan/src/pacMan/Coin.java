package pacMan;

public class Coin {

	private boolean collected;

	public Coin() {
		this.collected = false;
	}
	
	public boolean getCollected() {
		return collected;
	}

	public void setCollected(boolean collected) {
		this.collected = collected;
	}

	@Override
	public String toString() {
		return "Coin collected = " + collected ;
	}
	
	
}
