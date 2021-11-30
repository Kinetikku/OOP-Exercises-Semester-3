//Demonstration of Comparable interface using Strings

String s1 = "bob";
String s2 = "alice";

int compareResult = s2.compareTo(s1);    // returns a negative integer, zero, or a positive integer if this object is less than, equal to, or greater than the specified object.
println("compareResult = " + compareResult);

if (compareResult == 0)
  System.out.println("Strings are equal");
else if (compareResult > 0)
  System.out.println("s1 is greater than s2");
else if (compareResult < 0)
  System.out.println("s1 is less than s2");
