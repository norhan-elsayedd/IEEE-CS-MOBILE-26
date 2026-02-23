import 'car.dart';
import 'truck.dart';
import 'motorcycle.dart';

void main() {

  Car car1 =Car(1600, 180,"Petrol", 2020,"Toyota", 300000,"Automatic", 5);
  Car car2 =Car(2000, 220,"Diesel", 2022,"BMW", 600000,"Manual", 4);

  Truck truck1 =Truck(3000, 140,"Diesel", 2018,"Volvo", 800000, 10);
  Truck truck2 =Truck(4000, 120, "Diesel", 2021,"Mercedes", 950000, 15);

  Motorcycle m1 =Motorcycle(500, 160, "Petrol", 2019,"Honda", 70000, 2,false);
  Motorcycle m2 =Motorcycle(600, 180, "Petrol", 2023,"Yamaha", 90000, 2,true);

  List<Car> cars=[car1, car2];
  List<Truck> trucks =[truck1, truck2];
  List<Motorcycle> motorcycles=[m1, m2];

  Car fastestCar= cars[0];
  for (var car in cars) {
    if (car.maxSpeed>fastestCar.maxSpeed) {
      fastestCar=car;
    }
  }
  print("the fastest car:");
  fastestCar.printInfo();

  Truck maxLoadTruck=trucks[0];
  for (var truck in trucks) {
    if (truck.loadCapacity > maxLoadTruck.loadCapacity) {
      maxLoadTruck=truck;
    }
  }
  print("\ntruck with maximum load:");
  maxLoadTruck.printInfo();

  Motorcycle cheapestMoto=motorcycles[0];
  for (var moto in motorcycles) {
    if (moto.price<cheapestMoto.price) {
      cheapestMoto=moto;
    }
  }
  print("\nCheapest motorcycle:");
  cheapestMoto.printInfo();
}