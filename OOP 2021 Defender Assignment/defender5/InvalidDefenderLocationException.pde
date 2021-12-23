public class InvalidDefenderLocationException extends Exception{
  private Location location; 
  
  public InvalidDefenderLocationException(Location location){
    this.location=location;
  }
 
 public Location getLocation(){
   return this.location;
 }
 
 @Override
 public String getMessage() {
    return "InvalidDefenderLocationException:{Invalid defender location:"+getLocation()+"}"; 
 }
}
