public class Person
{
  private String firstName;
  private String lastName;
  private int age;

  public Person(String firstName, String lastName, int age)
  {
    this.firstName = firstName;
    this.lastName = lastName;
    this.age = age;
  }


  public boolean equals(Person one, Person two){
    if(one.firstName == two.firstName && one.lastName == two.lastName && one.age == two.age)
          return true;   
    else
      return false;
  }
  
}
