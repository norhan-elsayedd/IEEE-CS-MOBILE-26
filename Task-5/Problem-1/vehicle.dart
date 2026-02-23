abstract class Vehicle {
  int _cc;
  int _maxSpeed;
  String _engineType;
  int _model;
  String _manufacturer;
  double _price;

  Vehicle(this._cc, this._maxSpeed, this._engineType,this._model,this._manufacturer, this._price);

  int get cc=>_cc;
  int get maxSpeed=>_maxSpeed;
  String get engineType=>_engineType;
  int get model=>_model;
  String get manufacturer=>_manufacturer;
  double get price=>_price;

  void printInfo() {
    print("CC: $_cc");
    print("Max Speed: $_maxSpeed");
    print("Engine Type: $_engineType");
    print("Model: $_model");
    print("Manufacturer: $_manufacturer");
    print("Price: $_price");
  }
}