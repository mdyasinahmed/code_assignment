// Car Class
class Car{
  // Properties of Car Class
  String brand;
  String model;
  int year;
  var milesDriven; // using var instead of double to avoid error
  static int numberOfCars = 0;

  // Car class Constructor
  Car(this.brand, this.model, this.year){
    milesDriven = 0;
    numberOfCars++; // increasing the number of cars property's value
  }

  void drive(double miles){
    milesDriven += miles;
  }

  double getMilesDriven(){
    return milesDriven;
  }

  String getBrand(){
    return brand;
  }

  String getModel(){
    return model;
  }

  int getYear(){
    return year;
  }

  int getAge(){
    int currentYear = DateTime.now().year; // DateTime.now() for getting current time
    return currentYear - year; // calculating current age of car
  }

  static int getNumberOfCars(){
    return numberOfCars;
  }
}

// Main Method
void main(){
  // Creating 3 Car instances
  Car car1 = Car("Toyota", "Camry", 2020);
  car1.drive(10000);

  Car car2 = Car("Honda", "Civic", 2018);
  car2.drive(8000);

  Car car3 = Car("Ford", "F-150", 2015);
  car3.drive(15000);

  // Printing Output
  print("Car 1: ${car1.getBrand()} ${car1.getModel()} ${car1.getYear()} "
      "Miles: ${car1.getMilesDriven().toInt()} Age: ${car1.getAge()}");

  print("Car 2: ${car2.getBrand()} ${car2.getModel()} ${car2.getYear()} "
      "Miles: ${car2.getMilesDriven().toInt()} Age: ${car2.getAge()}");

  print("Car 3: ${car3.getBrand()} ${car3.getModel()} ${car3.getYear()} "
      "Miles: ${car3.getMilesDriven().toInt()} Age: ${car3.getAge()}");

  print("Total number of cars: ${Car.getNumberOfCars()}");
}
