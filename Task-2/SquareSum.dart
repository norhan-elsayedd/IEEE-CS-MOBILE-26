import 'dart:io';

void main(){
  String? input=stdin.readLineSync();
  List<int> numbers=input!.split(' ').map(int.parse).toList();
  int sum=0;
  for(int num in numbers){
    sum+=num*num;
  }
  print(sum);
}