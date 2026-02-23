import 'student.dart';
import 'studentEvent.dart';

class Postgraduate extends Student implements StudentEvent {

  Postgraduate(int regNo, name, marks):super(regNo, name, marks);

  int getPoints(int mark) {
    if (mark>=90) return 12;
    else if (mark>=85) return 32 ~/3;
    else if (mark>=80) return 31 ~/3;
    else if (mark>=75) return 10;
    else if (mark>=70) return 22 ~/3;
    else if (mark>=65) return 7;
    else if (mark>=60) return 6;
    else return 0;
  }
  @override
  double calcGPA() {
    double total = 0;
    for (var mark in marks) {
      total+=getPoints(mark);
    }
    return total/(marks.length* 3);
  }

  @override
  void printInfo() {
    print("Postgraduate Student");
    print("ID: $regNo");
    print("Name: ${name.fullName}");
    print("Marks: $marks");
    print("GPA: ${calcGPA()}");
  }
}