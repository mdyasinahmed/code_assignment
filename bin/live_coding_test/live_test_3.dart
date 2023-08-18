// Person Class
class Person{
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);

  // sayHello Method
  void sayHello(){
    print("Hello, my name is $name.");
  }

  // getAgeInMonths Method
  int getAgeInMonths(){
    return age*12;
  }
}

// Main Method
void main(){
  // Assigning value of name, age, address
  String name = "Md. Yasin Ahmed Mahi";
  int age = 20;
  String address = "Sylhet Sadar, Sylhet";

  // Person object
  Person person = Person(name, age, address);

  //calling sayHello Method
  person.sayHello();

  //calling getAgeInMonths Method
  int ageInMonths = person.getAgeInMonths();
  print("Age in months: $ageInMonths");
}
