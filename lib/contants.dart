import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const primaryColor = Colors.blue;

const secondarycolor= Color(0xff242430);
const darkcolor= Color(0xff191923);
const bodytextcolor=Color(0xff888880);
const bgcolor = Color(0xff1e1e28);
const edittextplatecolor = Color(0xff3c3c47);

const defaultpadding= 20.0;
const defaultduration=Duration(seconds: 1);
const maxWidth=1440.0;

//textstyle
TextStyle getstyle(double size,FontWeight w,Color c1){
  return GoogleFonts.poppins(fontSize: size,fontWeight: w,color: c1);
}
