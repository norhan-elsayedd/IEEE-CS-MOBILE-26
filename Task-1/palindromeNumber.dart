import 'dart:io';
void main(){
  print("Enter a string:");
  String? stringValue= stdin.readLineSync();

  String reversed=stringValue!.split('').reversed.join('');
  if(stringValue==reversed){
    print("Palindrome");
  }
  else{
    print("Not Palindrome");
  }
}