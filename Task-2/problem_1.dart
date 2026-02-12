import 'dart:io';
void main(){
print("enter a number:");
int? number=int.parse(stdin.readLineSync()!);
for(int i=1;i<=number;i++){
  if(number % i==0){
    print(i);
  }
}

}