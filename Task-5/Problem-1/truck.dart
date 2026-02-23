import 'vehicle.dart';

class Truck extends Vehicle {
  double _loadCapacity;

  Truck(int cc, int maxSpeed, String engineType,int model, String manufacturer, double price,
      this._loadCapacity): super(cc, maxSpeed, engineType, model, manufacturer, price);

  double get loadCapacity => _loadCapacity;

  @override
  void printInfo() {
    super.printInfo();
    print("Load Capacity: $_loadCapacity");
  }
}