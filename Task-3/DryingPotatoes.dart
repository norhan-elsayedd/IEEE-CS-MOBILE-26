int potatoes(int p0,int w0,int p1) {
  double w1 =w0 *(100-p0)/(100-p1);
  return w1.toInt(); 
}