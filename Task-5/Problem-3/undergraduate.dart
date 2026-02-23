import 'student.dart';
import 'studentEvent.dart';

class Undergraduate extends Student implements StudentEvent {

  Undergraduate(int regNo, name, marks):super(regNo, name, marks);

  int getPoints(int mark) {
    if (mark >=95) return 12;
    else if (mark>=90) return 11.5.toInt();
    else if (mark>=85) return 11;
    else if (mark>=80) return 10;
    else if (mark>=75) return 9;
    else if (mark>=70) return 8;
    else if (mark>=65) return 7;
    else if (mark>=60) return 6;
    else if (mark>=55) return 5;
    else if (mark>=53) return 4;
    else if (mark>=50) return 3;
    else return 0;
  }
  @override
  double calcGPA() {
    double total=0;
    for (var mark in marks) {
      total+=getPoints(mark);
    }
    return total/(marks.length *3);
  }

  @override
  void printInfo() {
    print("Undergraduate Student");
    print("ID: $regNo");
    print("Name: ${name.fullName}");
    print("Marks: $marks");
    print("GPA: ${calcGPA()}");
  }
}