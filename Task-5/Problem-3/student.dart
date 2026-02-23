import 'fullName.dart';

class Student {
  int _regNo;
  FullName _name;
  List<int> _marks;

  Student(this._regNo, this._name, this._marks);

  int get regNo=>_regNo;
  FullName get name=>_name;
  List<int> get marks=>_marks;
}