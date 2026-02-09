
void main(){
  String s1="Hello";
  String s2="World";
  String Concatenate=s1 +" "+ s2;

  print("Concatenated: $Concatenate");
  print("Length: ${Concatenate.length}");
  print("substring: ${Concatenate.substring(0,7)}");
  print("Uppercase: ${Concatenate.toUpperCase()}");
  print("Lowercase: ${Concatenate.toLowerCase()}");
}