import 'vehicle.dart';

class Motorcycle extends Vehicle {
  int _tires;
  bool _sidecar;

  Motorcycle(int cc, int maxSpeed, String engineType,int model, String manufacturer, double price,
      this._tires, this._sidecar): super(cc, maxSpeed, engineType, model, manufacturer, price);

  int get tires => _tires;
  bool get sidecar => _sidecar;

  @override
  void printInfo() {
    super.printInfo();
    print("Tires: $_tires");
    print("Sidecar: $_sidecar");
  }
}