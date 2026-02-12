import 'dart:io';
void main(){
  String? x=stdin.readLineSync();
  int length=x!.length;
  if(length%2==0){
    print(x[length~/2-1] + x[length~/2]);
  }
  else{
    print(x[length~/2]);
  }
}