import 'package:complex/complex.dart';
import 'dart:math';

//---------------------Sending end------------------------

Complex Vr_calc(Complex Vs, Complex Z, Complex I)
{
   Complex temp=(Vs - (Z * I));
  return (temp);

}


Complex Z_calc(double R, double L, double f, double l)
{
  R = R * l;
  L = L * l;

  double X = 2.0 * 3.14159 * f * L;
  Complex Z=Complex(R,X);
  return Z;
}


Complex I_calc_S(Complex Vs, double SS, double Pf, bool flag)
{
  double ang = (flag == true)? acos(Pf): -acos(Pf);
  Complex CP = Complex(SS*cos(ang),SS*sin(ang));

  Complex temp=Complex(3.0);
  Complex den = temp * Vs;
  Complex I = CP / den;

  return I.conjugate();
}



double Regulation(Complex Vs, Complex Vr)
{
  double MVr = Vr.abs();
  double MVs = Vs.abs();

  double ans = (MVs - MVr) / MVr;

  return (ans * 100.00);

}


double S_efficiency(double S, Complex I, Complex Vr, double Pf)
{

  Complex RP = Vr * I.conjugate();
  double Ps = (S * Pf) / 3.0;
  double Pr = RP.real;

  double ans = Pr / Ps;

  return ans * 100.00;
}


//-----------------------------Receiving end------------------------------

Complex Vs_calc(Complex Vr, Complex Z,  Complex I)
{
  Complex Vs = Vr + (Z * I);

  return Vs;
}



Complex I_calc_R( Complex Vr, double SR, double Pf, bool flag)
{
  double ang = (flag == true)? acos(Pf): -acos(Pf);
  Complex CP = Complex(SR*cos(ang),SR*sin(ang));
   // print(ang);
  Complex temp = Complex(3.0,0.0);
  Complex den = temp * Vr;
  Complex I = CP / den;

  return I.conjugate();
}



double R_efficiency(double S, Complex I, Complex Vs, double Pf)
{
  Complex SP = Vs * (I.conjugate());
  double Pr = (S * Pf) / 3.0;
  double Ps = SP.real;

  double ans = Pr / Ps;

  return (ans * 100.00);

}