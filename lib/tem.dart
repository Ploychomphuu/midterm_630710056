class Temm{

var numm;

double doTem1(double c){ //องศา-->ฟาเรน
  numm =9/5*c + 32;

  return numm;
}
double doTem2(double c){ //องศา-->เควิน
  numm =c+273;
  return numm;
}
double doTem3(double c){ //ฟาเรน-->องศา
  numm =(c-32)/1.80;
  return numm;
}

double doTem4(double c){ //ฟาเรน-->เควิน
  numm = 5/9*(c - 32) + 273.15;
  return numm;
}
double doTem5(double c){ //เควิน-->องศา
  numm =c-273.15;
  return numm;
}
double doTem6(double c){ //เควิน-->ฟาเรน
  numm =(c - 273)*1.8 + 32;
  return numm;
}

}