import 'package:complex/complex.dart';
import 'dart:math';

//------------------------Short line------------------------------
//---------------------Sending end------------------------

Complex Vr_calc(Complex Vs, Complex Z, Complex I) {
  Complex temp = (Vs - (Z * I));
  return (temp);
}

Complex Z_calc(double R, double L, double f, double l) {
  R = R * l;
  L = L * l;

  double X = 2.0 * 3.14159 * f * L;
  Complex Z = Complex(R, X);
  return Z;
}

Complex I_calc_S(Complex Vs, double SS, double Pf, bool flag) {
  double ang = (flag == true) ? acos(Pf) : -acos(Pf);
  Complex CP = Complex(SS * cos(ang), SS * sin(ang));

  Complex temp = Complex(3.0);
  Complex den = temp * Vs;
  Complex I = CP / den;

  return I.conjugate();
}

double Regulation(Complex Vs, Complex Vr) {
  double MVr = Vr.abs();
  double MVs = Vs.abs();

  double ans = (MVs - MVr) / MVr;

  return (ans * 100.00);
}

double S_efficiency(double S, Complex I, Complex Vr, double Pf) {
  Complex RP = Vr * I.conjugate();
  double Ps = (S * Pf) / 3.0;
  double Pr = RP.real;

  double ans = Pr / Ps;

  return ans * 100.00;
}

//-----------------------------Receiving end------------------------------

Complex Vs_calc(Complex Vr, Complex Z, Complex I) {
  Complex Vs = Vr + (Z * I);

  return Vs;
}

Complex I_calc_R(Complex Vr, double SR, double Pf, bool flag) {
  double ang = (flag == true) ? acos(Pf) : -acos(Pf);
  Complex CP = Complex(SR * cos(ang), SR * sin(ang));
  // print(ang);
  Complex temp = Complex(3.0, 0.0);
  Complex den = temp * Vr;
  Complex I = CP / den;

  return I.conjugate();
}

double R_efficiency(double S, Complex I, Complex Vs, double Pf) {
  Complex SP = Vs * (I.conjugate());
  double Pr = (S * Pf) / 3.0;
  double Ps = SP.real;

  double ans = Pr / Ps;

  return (ans * 100.00);
}

//---------------------Medium line--------------------------

//------------------sending-End---------------------
Complex Vr_calc_S(Complex A, Complex B, Complex C, Complex Vs, Complex Is) {
  Complex num = (A * Vs - B * Is);
  Complex den = (A * A - B * C);

  num = num / den;

  return num;
}

Complex Ir_calc_S(Complex A, Complex B, Complex C, Complex Vs, Complex Is) {
  Complex num = (C * Vs - A * Is);
  Complex den = (B * C - A * A);

  num = num / den;

  return num;
}

Complex Is_calc_S(double MSP, double Pf, Complex Vs, bool flag) {
  double arg = (flag == true) ? acos(Pf) : -acos(Pf);
  Complex SP = Complex(MSP * cos(arg), MSP * sin(arg));

  Complex Is = SP / (Complex(3.0) * Vs);

  return Is.conjugate();
}

//------------------------Recieving End---------------------------------

Complex Vs_calcM(Complex A, Complex B, Complex Vr, Complex Ir) {
  return (A * Vr + B * Ir);
}

Complex Is_calcM(Complex C, Complex D, Complex Vr, Complex Ir) {
  return (C * Vr + D * Ir);
}

double RegM(Complex Vs, Complex Vr, Complex A) {
  double MVs = Vs.abs();
  double MVr = Vr.abs();
  double MA = A.abs();

  double p1 = MVs / MA;
  double ans = (p1 - MVr) / MVr;

  return (ans * 100.00);
}

double effM(Complex SP, Complex RP) {
  double p1 = SP.real;
  double p2 = RP.real;

  double ans = p2 / p1;

  return (ans * 100.00);
}

Complex A_calcM(Complex Y, Complex Z) {
  // A is same as D

  Complex temp = (Y * Z) / 2.0;
  temp = temp + 1.0;

  return temp;
}

Complex C_calcM(Complex Y, Complex Z) {
  Complex temp = (Y * Z) / 4.0;
  temp = temp + 1.0;

  return (temp * Y);
}

Complex Y_calcM(double f, double l, double C) {
  double x = 2.0 * 3.14159 * f * C * l;

  Complex temp = new Complex(0.0, x);
  return temp;
}

double X_calcM(double f, double L, double l) {
  double x = 2.0 * 3.14159 * f * L * l;
  return x;
}

Complex Z_calcM(double R, double X) {
  Complex temp = new Complex(R, X);
  return temp;
}

Complex Ir_calcM(double MRP, double Pf, Complex Vr, bool flag) {
  double arg = (flag == true) ? acos(Pf) : -acos(Pf);
  Complex RP = new Complex(MRP * cos(arg), MRP * sin(arg));

  Complex Ir = RP / (Complex(3.0) * Vr);

  return Ir.conjugate();
}

//----------------long line-----------------------

//----------------sending end---------------------

double LReg(Complex Vs, Complex Vr, Complex A) {
  double MVs = Vs.abs() / 1000.0;
  double MVr = Vr.abs() / 1000.0;
  double MA = A.abs();

  double p1 = MVs / MA;
  double ans = (p1 - MVr) / MVr;
  ans = ans * 100.00;
  return ans;
}

double Leff(Complex SP, Complex RP) {
  double p1 = SP.real;
  double p2 = RP.real;

  double ans = p2 / p1;

  return (ans * 100.00);
}

Complex LY_calc(double f, double l, double C) {
  double x = 2.0 * 3.14159 * f * C * l;

  Complex temp = Complex(0.0, x);
  return temp;
}

double LX_calc(double f, double L, double l) {
  double x = 2.0 * 3.14159 * f * L * l;

  return x;
}

Complex LZ_calc(double R, double X) {
  Complex temp = Complex(R, X);
  return temp;
}

Complex yl_calc(Complex Z, Complex Y) {
  Complex temp = Z * Y;
  Complex x = temp.sqrt();

  return x;
}

Complex zc_calc(Complex Z, Complex Y) {
  Complex temp = Z / Y;
  Complex x = temp.sqrt();

  return x;
}

Complex coshyl_calc(Complex yl) {
  double a = yl.real;
  double b = yl.imaginary;

  double x = cosh(a) * cos(b);

  double y = sinh(a) * sin(b);

  Complex temp = Complex(x, y);

  return temp;
}

Complex sinhyl_calc(Complex yl) {
  double a = yl.real;
  double b = yl.imaginary;

  double x = sinh(a) * cos(b);
  double y = cosh(a) * sin(b);

  Complex temp = Complex(x, y);

  return temp;
}

Complex LIr_calc_S(double MRP, double Pf, Complex Vr, bool flag) {
  double arg = (flag == true) ? acos(Pf) : -acos(Pf);

  Complex RP = Complex.polar(MRP, arg);

  Complex Ir = RP / (Complex(3.0, 0) * Vr);

  return Ir.conjugate();
}

Complex LVs_calc_S(Complex A, Complex B, Complex Vr, Complex Ir) {
  Complex num = (A * Vr + B * Ir);

  return num;
}

Complex LIs_calc_S(Complex C, Complex D, Complex Vr, Complex Ir) {
  Complex num = (C * Vr + D * Ir);

  return num;
}

//----------------receiving end---------------

Complex LVr_calc_R(Complex A, Complex B, Complex C, Complex Vs, Complex Is) {
  Complex num = (A * Vs - B * Is);
  Complex den = (A * A - B * C);

  num = num / den;

  return num;
}

Complex LIr_calc_R(Complex A, Complex B, Complex C, Complex Vs, Complex Is) {
  Complex num = (C * Vs - A * Is);
  Complex den = (B * C - A * A);

  num = num / den;

  return num;
}

Complex LIs_calc_R(double MSP, double Pf, Complex Vs, bool flag) {
  double arg = (flag == true) ? acos(Pf) : -acos(Pf);

  Complex SP = Complex.polar(MSP, arg);

  Complex Is = SP / (Complex(3.0, 0) * Vs);

  return Is.conjugate();
}

//-------cosh----------------
double cosh(double angle) {
  return (exp(angle) + exp(-angle)) / 2;
}

double sinh(double angle) {
  return (exp(angle) - exp(-angle)) / 2;
}
