import 'vehicle.dart';

class Car extends Vehicle {
  String _transmission;
  int _passengers;

  Car(int cc, int maxSpeed, String engineType,int model, String manufacturer, double price,
  this._transmission, this._passengers): super(cc, maxSpeed, engineType, model, manufacturer, price);

  String get transmission=>_transmission;
  int get passengers=>_passengers;

  @override
  void printInfo() {
    super.printInfo();
    print("Transmission: $_transmission");
    print("Passengers: $_passengers");
  }
}