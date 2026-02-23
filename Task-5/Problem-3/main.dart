import 'fullName.dart';
import 'undergraduate.dart';
import 'postgraduate.dart';

void main() {
  var ugName =FullName("Ali","Ahmed","Hassan");
  var pgName =FullName("Sara","Mohamed","Ali");

  Undergraduate ug =Undergraduate(1001, ugName,[90,85,70]);
  Postgraduate pg =Postgraduate(2001,pgName, [88,92,76]);

  ug.printInfo();
  print("\n");
  pg.printInfo();
}