import 'dart:math';

import 'package:complex/complex.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sergeapp/mediumline/mediumlinebanner.dart';
import 'package:sergeapp/scripts/script.dart';
import 'package:sergeapp/singleline/shortlinebanner.dart';

import '../components/footer.dart';
import '../components/responsive.dart';
import '../contants.dart';
import '../home/homebanner.dart';

class Longlinescreen extends StatefulWidget {
  const Longlinescreen({Key? key}) : super(key: key);

  @override
  _LonglinescreenState createState() => _LonglinescreenState();
}

class _LonglinescreenState extends State<Longlinescreen> {
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  String? linelength,
      resistance,
      inductance,
      frequency,
      complexpower,
      powerfactor,
      current,
      argumentofcurrent,
      absvs,
      vsarg,
      capacitance;

  String? linelengthR,
      resistanceR,
      inductanceR,
      frequencyR,
      complexpowerR,
      powerfactorR,
      currentR,
      argumentofcurrentR,
      absvr,
      vrarg,
      capacitanceR;
  TextEditingController? _linelength,
      _resistance,
      _inductance,
      _frequency,
      _complexpower,
      _powerfactor,
      _current,
      _argumentofcurrent,
      _absvs,
      _vsarg,
      _capacitance;

  TextEditingController? _linelengthR,
      _resistanceR,
      _inductanceR,
      _frequencyR,
      _complexpowerR,
      _powerfactorR,
      _currentR,
      _argumentofcurrentR,
      _absvr,
      _vrarg,
      _capacitanceR;
  bool _value2 = false;
  bool _value=false;
  bool _sign2 = false;
  bool _sign1 = false;

  String out="Answer will be shown here";
  String out2="Answer will be shown here";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _linelength = new TextEditingController();
    _resistance = new TextEditingController();
    _inductance = new TextEditingController();
    _frequency = new TextEditingController();
    _complexpower = new TextEditingController();
    _powerfactor = new TextEditingController();
    _current = new TextEditingController();
    _argumentofcurrent = new TextEditingController();
    _absvs = new TextEditingController();
    _vsarg = new TextEditingController();
    _capacitance=new TextEditingController();


    //  receiving

    _linelengthR = new TextEditingController();
    _resistanceR = new TextEditingController();
    _inductanceR = new TextEditingController();
    _frequencyR = new TextEditingController();
    _complexpowerR = new TextEditingController();
    _powerfactorR = new TextEditingController();
    _currentR = new TextEditingController();
    _argumentofcurrentR = new TextEditingController();
    _absvr = new TextEditingController();
    _vrarg = new TextEditingController();
    _capacitanceR=new TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                right: Responsive.isdesktop(context) ? 0 : 15,
              ),
              child: Column(
                children: [
                  mediumlinebanner(),
                  Container(
                    margin: EdgeInsets.symmetric(
                        horizontal: Responsive.isdesktop(context) ? 20 : 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 2 * defaultpadding,
                        ),
                        Text(
                          "Medium line Parameter Calculator",
                          style: getstyle(18, FontWeight.w500, Colors.blue),
                        ),

                        SizedBox(height: 10,),

                        Text(
                          "> 200 KM",
                          style: getstyle(18, FontWeight.w500, Colors.white),
                        ),


                        //sending end

                        SizedBox(
                          height: 25,
                        ),
                        Row(
                          children: [
                            Text(
                              "From Sending End",
                              style: getstyle(15, FontWeight.w500, Colors.white),
                            ),
                          ],
                        ),

                        Form(
                            key: formKey1,
                            child: Column(children: [
                              SizedBox(
                                height: 20,
                              ),
                              Container(

                                  width: double.infinity,
                                  height: 70,
                                  padding: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color: edittextplatecolor),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 8,
                                        child: Linelength(),
                                      ),
                                      Expanded(
                                          flex: Responsive.ismobile(context) ? 2 : 1,
                                          child: Container(
                                            height: 70,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(10),
                                                    bottomRight: Radius.circular(10)),
                                                color: Colors.blue),
                                            child: Center(
                                              child: Text(
                                                "km",
                                                style: getstyle(
                                                    15, FontWeight.normal, Colors.white),
                                              ),
                                            ),
                                          )),
                                    ],
                                  )),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                  height: 70,
                                  width: double.infinity,
                                  padding: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: edittextplatecolor),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 8,
                                        child: Resistance(),
                                      ),
                                      Expanded(
                                          flex: Responsive.ismobile(context) ? 2 : 1,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(10),
                                                    bottomRight: Radius.circular(10)),
                                                color: Colors.blue),
                                            child: Center(
                                              child: Text(
                                                "ohm/km",
                                                style: getstyle(
                                                    15, FontWeight.normal, Colors.white),
                                              ),
                                            ),
                                          )),
                                    ],
                                  )),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                  height: 70,
                                  width: double.infinity,
                                  padding: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: edittextplatecolor),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 8,
                                        child: Inductance(),
                                      ),
                                      Expanded(
                                          flex: Responsive.ismobile(context) ? 2 : 1,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(10),
                                                    bottomRight: Radius.circular(10)),
                                                color: Colors.blue),
                                            child: Center(
                                              child: Text(
                                                "H/km",
                                                style: getstyle(
                                                    15, FontWeight.normal, Colors.white),
                                              ),
                                            ),
                                          )),
                                    ],
                                  )),

                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                  height: 70,
                                  width: double.infinity,
                                  padding: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: edittextplatecolor),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 8,
                                        child: Capacitance(),
                                      ),
                                      Expanded(
                                          flex: Responsive.ismobile(context) ? 2 : 1,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(10),
                                                    bottomRight: Radius.circular(10)),
                                                color: Colors.blue),
                                            child: Center(
                                              child: Text(
                                                "??F/km",
                                                style: getstyle(
                                                    15, FontWeight.normal, Colors.white),
                                              ),
                                            ),
                                          )),
                                    ],
                                  )),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                  height: 70,
                                  width: double.infinity,
                                  padding: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: edittextplatecolor),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 8,
                                        child: Frequency(),
                                      ),
                                      Expanded(
                                          flex: Responsive.ismobile(context) ? 2 : 1,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(10),
                                                    bottomRight: Radius.circular(10)),
                                                color: Colors.blue),
                                            child: Center(
                                              child: Text(
                                                "Hz",
                                                style: getstyle(
                                                    15, FontWeight.normal, Colors.white),
                                              ),
                                            ),
                                          )),
                                    ],
                                  )),

                              //vsabs
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                  height: 70,
                                  width: double.infinity,
                                  padding: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: edittextplatecolor),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 8,
                                        child: absolutevalueofvs(),
                                      ),
                                      Expanded(
                                          flex: Responsive.ismobile(context) ? 2 : 1,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(10),
                                                    bottomRight: Radius.circular(10)),
                                                color: Colors.blue),
                                            child: Center(
                                              child: Text(
                                                "V",
                                                style: getstyle(
                                                    15, FontWeight.normal, Colors.white),
                                              ),
                                            ),
                                          )),
                                    ],
                                  )),

                              //vsarg

                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                  height: 70,
                                  width: double.infinity,
                                  padding: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: edittextplatecolor),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 8,
                                        child: argumentofvs(),
                                      ),
                                      Expanded(
                                          flex: Responsive.ismobile(context) ? 2 : 1,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(10),
                                                    bottomRight: Radius.circular(10)),
                                                color: Colors.blue),
                                            child: Center(
                                              child: Text(
                                                "rad",
                                                style: getstyle(
                                                    15, FontWeight.normal, Colors.white),
                                              ),
                                            ),
                                          )),
                                    ],
                                  )),

                              SizedBox(
                                height: 30,
                              ),
                              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                                ChoiceChip(
                                  backgroundColor:
                                  !_value ? Colors.blue : edittextplatecolor,
                                  padding: EdgeInsets.all(10),
                                  label: Text(
                                    'Power is Given',
                                    style: getstyle(13, FontWeight.normal, Colors.white),
                                  ),
                                  selected: _value == true,
                                  onSelected: (bool selected) {
                                    setState(() {
                                      _value = selected ? true : false;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ChoiceChip(
                                  backgroundColor:
                                  _value ? Colors.blue : edittextplatecolor,
                                  padding: EdgeInsets.all(10),
                                  label: Text(
                                    'Current is Given',
                                    style: getstyle(13, FontWeight.normal, Colors.white),
                                  ),
                                  selected: _value == false,
                                  onSelected: (bool selected) {
                                    setState(() {
                                      _value = selected ? false : true;
                                    });
                                  },
                                ),
                              ]),

                              SizedBox(
                                height: 20,
                              ),

                              !_value
                                  ? Column(
                                children: [
                                  Container(
                                      height: 70,
                                      width: double.infinity,
                                      padding: EdgeInsets.only(left: 15),
                                      alignment: Alignment.centerLeft,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: edittextplatecolor),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 8,
                                            child: Complexpower(),
                                          ),
                                          Expanded(
                                              flex: Responsive.ismobile(context)
                                                  ? 2
                                                  : 1,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.only(
                                                        topRight:
                                                        Radius.circular(10),
                                                        bottomRight:
                                                        Radius.circular(10)),
                                                    color: Colors.blue),
                                                child: Center(
                                                  child: Text(
                                                    "VA",
                                                    style: getstyle(
                                                        15,
                                                        FontWeight.normal,
                                                        Colors.white),
                                                  ),
                                                ),
                                              )),
                                        ],
                                      )),

                                  SizedBox(
                                    height: 15,
                                  ),

                                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                                    ChoiceChip(
                                      backgroundColor:
                                      !_sign1 ? Colors.blue : edittextplatecolor,
                                      padding: EdgeInsets.all(10),
                                      label: Text(
                                        'Leading',
                                        style: getstyle(13, FontWeight.normal, Colors.white),
                                      ),
                                      selected: _sign1 == true,
                                      onSelected: (bool selected) {
                                        setState(() {
                                          _sign1 = selected ? true : false;
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    ChoiceChip(
                                      backgroundColor:
                                      _sign1 ? Colors.blue : edittextplatecolor,
                                      padding: EdgeInsets.all(10),
                                      label: Text(
                                        'Lagging',
                                        style: getstyle(13, FontWeight.normal, Colors.white),
                                      ),
                                      selected: _sign1 == false,
                                      onSelected: (bool selected) {
                                        setState(() {
                                          _sign1 = selected ? false : true;
                                        });
                                      },
                                    ),
                                  ]),


                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                      height: 70,
                                      width: double.infinity,
                                      padding: EdgeInsets.only(left: 15),
                                      alignment: Alignment.centerLeft,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: edittextplatecolor),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 8,
                                            child: Powerfactor(),
                                          ),
                                          Expanded(
                                              flex: Responsive.ismobile(context)
                                                  ? 2
                                                  : 1,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.only(
                                                        topRight:
                                                        Radius.circular(10),
                                                        bottomRight:
                                                        Radius.circular(10)),
                                                    color: Colors.blue),
                                                child: Center(
                                                  child: Text(
                                                    "rad",
                                                    style: getstyle(
                                                        15,
                                                        FontWeight.normal,
                                                        Colors.white),
                                                  ),
                                                ),
                                              )),
                                        ],
                                      )),
                                ],
                              )
                                  : Column(
                                children: [
                                  Container(
                                      height: 70,
                                      width: double.infinity,
                                      padding: EdgeInsets.only(left: 15),
                                      alignment: Alignment.centerLeft,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: edittextplatecolor),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 8,
                                            child: Current(),
                                          ),
                                          Expanded(
                                              flex: Responsive.ismobile(context)
                                                  ? 2
                                                  : 1,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.only(
                                                        topRight:
                                                        Radius.circular(10),
                                                        bottomRight:
                                                        Radius.circular(10)),
                                                    color: Colors.blue),
                                                child: Center(
                                                  child: Text(
                                                    "A",
                                                    style: getstyle(
                                                        15,
                                                        FontWeight.normal,
                                                        Colors.white),
                                                  ),
                                                ),
                                              )),
                                        ],
                                      )),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                      height: 70,
                                      width: double.infinity,
                                      padding: EdgeInsets.only(left: 15),
                                      alignment: Alignment.centerLeft,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: edittextplatecolor),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 8,
                                            child: Argumentofcurrent(),
                                          ),
                                          Expanded(
                                              flex: Responsive.ismobile(context)
                                                  ? 2
                                                  : 1,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.only(
                                                        topRight:
                                                        Radius.circular(10),
                                                        bottomRight:
                                                        Radius.circular(10)),
                                                    color: Colors.blue),
                                                child: Center(
                                                  child: Text(
                                                    "rad",
                                                    style: getstyle(
                                                        15,
                                                        FontWeight.normal,
                                                        Colors.white),
                                                  ),
                                                ),
                                              )),
                                        ],
                                      )),
                                ],
                              ),

                              SizedBox(
                                height: 30,
                              ),

                              Container(
                                width: double.infinity,
                                height: 50,
                                child: FlatButton(
                                  onPressed: () {
                                    if (formKey1.currentState!.validate()) {
                                      formKey1.currentState!.save();
                                       double MVs=double.parse(absvs!)/sqrt(3.0);
                                       double ang=double.parse(vsarg!);
                                       double R=double.parse(resistance!);
                                       double L=double.parse(inductance!);
                                       double l=double.parse(linelength!);
                                       double f=double.parse(frequency!);
                                       double c = double.parse(capacitance!);
                                       c = c * 1e-6;

                                       R = R * l;
                                       Complex Vs=Complex(MVs*cos(ang),MVs*sin(ang));
                                       double X = LX_calc(f, L, l);
                                       Complex Y = LY_calc(f, l, c);
                                       Complex Z = LZ_calc(R, X);




                                       Complex Is;

                                         double Pf=double.parse(powerfactor!);
                                        double MSP=double.parse(complexpower!);
                                         Is=LIs_calc_R(MSP, Pf, Vs, _sign1);

                                      Complex yl=yl_calc(Z, Y);
                                      Complex zc=zc_calc(Z, Y);

                                      Complex coshyl=coshyl_calc(yl);
                                      Complex sinhyl=sinhyl_calc(yl);

                                      Complex A = coshyl;
                                      Complex D = A;
                                      Complex B = zc*sinhyl;
                                      Complex C = sinhyl/zc;

                                      Complex Vr = LVr_calc_R(A, B, C, Vs, Is);
                                      Complex Ir = LIr_calc_R(A, B, C, Vs, Is);

                                       Complex SP = Complex(3.0) * Vs * Is.conjugate();
                                       Complex RP = Complex(3.0) * Vr * Ir.conjugate();

                                       double effi = Leff(SP, RP);
                                       double regu = LReg(Vs, Vr, A);

                                      setState(() {
                                        String vr=Vr.imaginary<0?Vr.real.toString()+" - j"+Vr.imaginary.abs().toString():
                                        Vr.real.toString()+" + j"+Vr.imaginary.abs().toString();
                                        String ir=Ir.imaginary<0?Ir.real.toString()+" - j"+Ir.imaginary.abs().toString():
                                        Ir.real.toString()+" + j"+Ir.imaginary.toString();

                                        out = "Receiving End Voltage (Vr) :\n $vr V\n\n "
                                            "Receiving End Current (Ir) : \n $ir A\n\n"
                                            "Receiving End Power = $RP VA\n\n"
                                            // "SP: $SP\n\n"

                                            "Regulation = $regu \n\n"
                                            "Line Efficiency = $effi% \n\n";

                                      });


                                    }
                                  },
                                  child: Text("Submit"),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  color: Colors.blue,
                                ),
                              ),

                            ],)),

                        SizedBox(height: 20,),

                        Container(
                          height: 300,
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 15),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: edittextplatecolor),

                          child:  Row(
                            children: [

                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(top: 20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                ),
                                child: Text(
                                  out,
                                  style: getstyle(
                                      15, FontWeight.normal, Colors.white),
                                ),
                              ),

                            ],
                          ),



                        ),

                        SizedBox(
                          height: 50,
                        ),



                        //recieving end
                        SizedBox(
                          height: 25,
                        ),


                        Row(
                          children: [
                            Text(
                              "From Receiving End",
                              style: getstyle(15, FontWeight.w500, Colors.white),
                            ),
                          ],
                        ),

                        Form(
                            key: formKey2,
                            child: Column(children: [
                              SizedBox(
                                height: 20,
                              ),
                              Container(

                                  width: double.infinity,
                                  height: 70,
                                  padding: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(13),
                                      color: edittextplatecolor),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 8,
                                        child: LinelengthR(),
                                      ),
                                      Expanded(
                                          flex: Responsive.ismobile(context) ? 2 : 1,
                                          child: Container(
                                            height: 70,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(10),
                                                    bottomRight: Radius.circular(10)),
                                                color: Colors.blue),
                                            child: Center(
                                              child: Text(
                                                "km",
                                                style: getstyle(
                                                    15, FontWeight.normal, Colors.white),
                                              ),
                                            ),
                                          )),
                                    ],
                                  )),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                  height: 70,
                                  width: double.infinity,
                                  padding: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: edittextplatecolor),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 8,
                                        child: ResistanceR(),
                                      ),
                                      Expanded(
                                          flex: Responsive.ismobile(context) ? 2 : 1,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(10),
                                                    bottomRight: Radius.circular(10)),
                                                color: Colors.blue),
                                            child: Center(
                                              child: Text(
                                                "ohm/km",
                                                style: getstyle(
                                                    15, FontWeight.normal, Colors.white),
                                              ),
                                            ),
                                          )),
                                    ],
                                  )),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                  height: 70,
                                  width: double.infinity,
                                  padding: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: edittextplatecolor),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 8,
                                        child: InductanceR(),
                                      ),
                                      Expanded(
                                          flex: Responsive.ismobile(context) ? 2 : 1,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(10),
                                                    bottomRight: Radius.circular(10)),
                                                color: Colors.blue),
                                            child: Center(
                                              child: Text(
                                                "H/km",
                                                style: getstyle(
                                                    15, FontWeight.normal, Colors.white),
                                              ),
                                            ),
                                          )),
                                    ],
                                  )),

                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                  height: 70,
                                  width: double.infinity,
                                  padding: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: edittextplatecolor),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 8,
                                        child: CapacitanceR(),
                                      ),
                                      Expanded(
                                          flex: Responsive.ismobile(context) ? 2 : 1,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(10),
                                                    bottomRight: Radius.circular(10)),
                                                color: Colors.blue),
                                            child: Center(
                                              child: Text(
                                                "??F/km",
                                                style: getstyle(
                                                    15, FontWeight.normal, Colors.white),
                                              ),
                                            ),
                                          )),
                                    ],
                                  )),

                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                  height: 70,
                                  width: double.infinity,
                                  padding: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: edittextplatecolor),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 8,
                                        child: FrequencyR(),
                                      ),
                                      Expanded(
                                          flex: Responsive.ismobile(context) ? 2 : 1,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(10),
                                                    bottomRight: Radius.circular(10)),
                                                color: Colors.blue),
                                            child: Center(
                                              child: Text(
                                                "Hz",
                                                style: getstyle(
                                                    15, FontWeight.normal, Colors.white),
                                              ),
                                            ),
                                          )),
                                    ],
                                  )),

                              //vsabs
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                  height: 70,
                                  width: double.infinity,
                                  padding: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: edittextplatecolor),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 8,
                                        child: absolutevalueofvr(),
                                      ),
                                      Expanded(
                                          flex: Responsive.ismobile(context) ? 2 : 1,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(10),
                                                    bottomRight: Radius.circular(10)),
                                                color: Colors.blue),
                                            child: Center(
                                              child: Text(
                                                "V",
                                                style: getstyle(
                                                    15, FontWeight.normal, Colors.white),
                                              ),
                                            ),
                                          )),
                                    ],
                                  )),

                              //vsarg

                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                  height: 70,
                                  width: double.infinity,
                                  padding: EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: edittextplatecolor),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 8,
                                        child: argumentofvr(),
                                      ),
                                      Expanded(
                                          flex: Responsive.ismobile(context) ? 2 : 1,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(10),
                                                    bottomRight: Radius.circular(10)),
                                                color: Colors.blue),
                                            child: Center(
                                              child: Text(
                                                "rad",
                                                style: getstyle(
                                                    15, FontWeight.normal, Colors.white),
                                              ),
                                            ),
                                          )),
                                    ],
                                  )),

                              SizedBox(
                                height: 30,
                              ),
                              Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                                ChoiceChip(
                                  backgroundColor:
                                  !_value2 ? Colors.blue : edittextplatecolor,
                                  padding: EdgeInsets.all(10),
                                  label: Text(
                                    'Power is Given',
                                    style: getstyle(13, FontWeight.normal, Colors.white),
                                  ),
                                  selected: _value2 == true,
                                  onSelected: (bool selected) {
                                    setState(() {
                                      _value2 = selected ? true : false;
                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                ChoiceChip(
                                  backgroundColor:
                                  _value2 ? Colors.blue : edittextplatecolor,
                                  padding: EdgeInsets.all(10),
                                  label: Text(
                                    'Current is Given',
                                    style: getstyle(13, FontWeight.normal, Colors.white),
                                  ),
                                  selected: _value2 == false,
                                  onSelected: (bool selected) {
                                    setState(() {
                                      _value2 = selected ? false : true;
                                    });
                                  },
                                ),
                              ]),

                              SizedBox(
                                height: 20,
                              ),

                              !_value2
                                  ? Column(
                                children: [
                                  Container(
                                      height: 70,
                                      width: double.infinity,
                                      padding: EdgeInsets.only(left: 15),
                                      alignment: Alignment.centerLeft,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: edittextplatecolor),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 8,
                                            child: ComplexpowerR(),
                                          ),
                                          Expanded(
                                              flex: Responsive.ismobile(context)
                                                  ? 2
                                                  : 1,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.only(
                                                        topRight:
                                                        Radius.circular(10),
                                                        bottomRight:
                                                        Radius.circular(10)),
                                                    color: Colors.blue),
                                                child: Center(
                                                  child: Text(
                                                    "VA",
                                                    style: getstyle(
                                                        15,
                                                        FontWeight.normal,
                                                        Colors.white),
                                                  ),
                                                ),
                                              )),
                                        ],
                                      )),

                                  SizedBox(
                                    height: 15,
                                  ),

                                  Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                                    ChoiceChip(
                                      backgroundColor:
                                      !_sign2 ? Colors.blue : edittextplatecolor,
                                      padding: EdgeInsets.all(10),
                                      label: Text(
                                        'Leading',
                                        style: getstyle(13, FontWeight.normal, Colors.white),
                                      ),
                                      selected: _sign2 == true,
                                      onSelected: (bool selected) {
                                        setState(() {
                                          _sign2 = selected ? true : false;
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    ChoiceChip(
                                      backgroundColor:
                                      _sign2 ? Colors.blue : edittextplatecolor,
                                      padding: EdgeInsets.all(10),
                                      label: Text(
                                        'Lagging',
                                        style: getstyle(13, FontWeight.normal, Colors.white),
                                      ),
                                      selected: _sign2 == false,
                                      onSelected: (bool selected) {
                                        setState(() {
                                          _sign2 = selected ? false : true;
                                        });
                                      },
                                    ),
                                  ]),


                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                      height: 70,
                                      width: double.infinity,
                                      padding: EdgeInsets.only(left: 15),
                                      alignment: Alignment.centerLeft,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: edittextplatecolor),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 8,
                                            child: PowerfactorR(),
                                          ),
                                          Expanded(
                                              flex: Responsive.ismobile(context)
                                                  ? 2
                                                  : 1,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.only(
                                                        topRight:
                                                        Radius.circular(10),
                                                        bottomRight:
                                                        Radius.circular(10)),
                                                    color: Colors.blue),
                                                child: Center(
                                                  child: Text(
                                                    "rad",
                                                    style: getstyle(
                                                        15,
                                                        FontWeight.normal,
                                                        Colors.white),
                                                  ),
                                                ),
                                              )),
                                        ],
                                      )),
                                ],
                              )
                                  : Column(
                                children: [
                                  Container(
                                      height: 70,
                                      width: double.infinity,
                                      padding: EdgeInsets.only(left: 15),
                                      alignment: Alignment.centerLeft,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: edittextplatecolor),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 8,
                                            child: CurrentR(),
                                          ),
                                          Expanded(
                                              flex: Responsive.ismobile(context)
                                                  ? 2
                                                  : 1,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.only(
                                                        topRight:
                                                        Radius.circular(10),
                                                        bottomRight:
                                                        Radius.circular(10)),
                                                    color: Colors.blue),
                                                child: Center(
                                                  child: Text(
                                                    "A",
                                                    style: getstyle(
                                                        15,
                                                        FontWeight.normal,
                                                        Colors.white),
                                                  ),
                                                ),
                                              )),
                                        ],
                                      )),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                      height: 70,
                                      width: double.infinity,
                                      padding: EdgeInsets.only(left: 15),
                                      alignment: Alignment.centerLeft,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: edittextplatecolor),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 8,
                                            child: ArgumentofcurrentR(),
                                          ),
                                          Expanded(
                                              flex: Responsive.ismobile(context)
                                                  ? 2
                                                  : 1,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.only(
                                                        topRight:
                                                        Radius.circular(10),
                                                        bottomRight:
                                                        Radius.circular(10)),
                                                    color: Colors.blue),
                                                child: Center(
                                                  child: Text(
                                                    "rad",
                                                    style: getstyle(
                                                        15,
                                                        FontWeight.normal,
                                                        Colors.white),
                                                  ),
                                                ),
                                              )),
                                        ],
                                      )),
                                ],
                              ),

                              SizedBox(
                                height: 30,
                              ),

                              Container(
                                width: double.infinity,
                                height: 50,
                                child: FlatButton(
                                  onPressed: () {
                                    if (formKey2.currentState!.validate()) {
                                      formKey2.currentState!.save();
                                      double MVr=double.parse(absvr!)/sqrt(3.0);
                                      double ang=double.parse(vrarg!);
                                      double R=double.parse(resistanceR!);
                                      double L=double.parse(inductanceR!);
                                      double l=double.parse(linelengthR!);
                                      double f=double.parse(frequencyR!);
                                      double c=double.parse(capacitanceR!);
                                      c = c * 1e-6;

                                       Complex Vr=Complex(MVr*cos(ang),MVr*sin(ang));
                                       R = R * l;
                                       double X = LX_calc(f, L, l);
                                       Complex Z=LZ_calc(R, X);
                                       Complex Ir;
                                       Complex Y = LY_calc(f, l, c);


                                         double Pf=double.parse(powerfactorR!);
                                         double MRP=double.parse(complexpowerR!);

                                      Ir=LIr_calc_S(MRP, Pf, Vr, _sign2);

                                      Complex yl=yl_calc(Z, Y);
                                      Complex zc=zc_calc(Z, Y);

                                      Complex coshyl=coshyl_calc(yl);
                                      Complex sinhyl=sinhyl_calc(yl);


                                      Complex A = coshyl;
                                      Complex D = A;
                                      Complex B = zc*sinhyl;
                                      Complex C = sinhyl/zc;


                                      Complex Vs = LVs_calc_S(A, B, Vr, Ir);
                                      Complex Is = LIs_calc_S(C, D, Vr, Ir);

                                      Complex SP = Complex(3.0) * Vs * Is.conjugate();
                                      Complex RP = Complex(3.0) * Vr * Ir.conjugate();

                                      double effi = Leff(SP, RP);
                                      double regi = LReg(Vs, Vr, A);





                                      setState(() {
                                        String vs=Vs.imaginary<0?Vs.real.toString()+" - j"+Vs.imaginary.abs().toString():
                                        Vs.real.toString()+" + j"+Vs.imaginary.toString();
                                        String IS=Is.imaginary<0?Is.real.toString()+" - j"+Is.imaginary.abs().toString():
                                        Is.real.toString()+" + j"+Is.imaginary.toString();

                                        out2 = "Sending End Voltage (Vs) :\n $vs. V \n\n"
                                            "Sending End Current (Is) :\n $IS A \n\n"
                                            "Sending End Power : $SP VA\n\n"
                                            "Regulation : $regi \n\n"
                                            "Line Efficiency : $effi%\n\n";



                                        //out2="$Z";
                                      });


                                    }
                                  },
                                  child: Text("Submit"),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  color: Colors.blue,
                                ),
                              ),
                            ],)),

                        SizedBox(height: 20,),


                        Container(
                          height: 300,
                          width: double.infinity,
                          padding: EdgeInsets.only(left: 15),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: edittextplatecolor),

                          child:  Row(
                            children: [

                              Container(
                                alignment: Alignment.topLeft,
                                padding: EdgeInsets.only(top: 20),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10),
                                      bottomRight: Radius.circular(10)),
                                ),
                                child: Text(
                                  out2,
                                  style: getstyle(
                                      15, FontWeight.normal, Colors.white),
                                ),
                              ),

                            ],
                          ),

                        ),

                        SizedBox(
                          height: defaultpadding,
                        ),
                      ],
                    ),
                  ),
                  Footer()
                ],
              ),
            )),
      ),
    );
  }

  //  ----------sending end

  TextFormField Linelength() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(
          decimal: true,
          signed: false),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
        TextInputFormatter.withFunction((oldValue, newValue) {
          try {
            final text = newValue.text;
            if (text.isNotEmpty) double.parse(text);
            return newValue;
          } catch (e) {}
          return oldValue;
        }),
      ],

      onSaved: (newValue) => linelength = newValue!,
      controller: _linelength,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter Line Length';
        }
        return null;
      },
      cursorColor: Colors.grey,
      style: getstyle(15, FontWeight.normal, Colors.grey),
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorStyle: TextStyle(fontSize: 12, height: 0.1),


        focusColor: Colors.blue,
        hintStyle: getstyle(15, FontWeight.normal, Colors.grey),
        hintText: "Line Length",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField Resistance() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(
          decimal: true,
          signed: false),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
        TextInputFormatter.withFunction((oldValue, newValue) {
          try {
            final text = newValue.text;
            if (text.isNotEmpty) double.parse(text);
            return newValue;
          } catch (e) {}
          return oldValue;
        }),
      ],

      onSaved: (newValue) => resistance = newValue!,
      controller: _resistance,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter Resistance';
        }
        return null;
      },
      cursorColor: Colors.grey,
      style: getstyle(15, FontWeight.normal, Colors.grey),
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorStyle: TextStyle(fontSize: 12, height: 0.1),
        hintStyle: getstyle(15, FontWeight.normal, Colors.grey),
        hintText: "Resistance",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField Inductance() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(
          decimal: true,
          signed: false),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
        TextInputFormatter.withFunction((oldValue, newValue) {
          try {
            final text = newValue.text;
            if (text.isNotEmpty) double.parse(text);
            return newValue;
          } catch (e) {}
          return oldValue;
        }),
      ],

      onSaved: (newValue) => inductance = newValue!,
      controller: _inductance,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter Inductance';
        }
        return null;
      },
      cursorColor: Colors.grey,
      style: getstyle(15, FontWeight.normal, Colors.grey),
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorStyle: TextStyle(fontSize: 12, height: 0.1),
        hintStyle: getstyle(15, FontWeight.normal, Colors.grey),
        hintText: "Inductance",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField Frequency() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(
          decimal: true,
          signed: false),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
        TextInputFormatter.withFunction((oldValue, newValue) {
          try {
            final text = newValue.text;
            if (text.isNotEmpty) double.parse(text);
            return newValue;
          } catch (e) {}
          return oldValue;
        }),
      ],

      onSaved: (newValue) => frequency = newValue!,
      controller: _frequency,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter Frequency';
        }
        return null;
      },
      cursorColor: Colors.grey,
      style: getstyle(15, FontWeight.normal, Colors.grey),
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorStyle: TextStyle(fontSize: 12, height: 0.1),
        hintStyle: getstyle(15, FontWeight.normal, Colors.grey),
        hintText: "Frequency",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField absolutevalueofvs() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(
          decimal: true,
          signed: false),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
        TextInputFormatter.withFunction((oldValue, newValue) {
          try {
            final text = newValue.text;
            if (text.isNotEmpty) double.parse(text);
            return newValue;
          } catch (e) {}
          return oldValue;
        }),
      ],

      onSaved: (newValue) => absvs = newValue!,
      controller: _absvs,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter Absolute Value of Sending End voltage';
        }
        return null;
      },
      cursorColor: Colors.grey,
      style: getstyle(15, FontWeight.normal, Colors.grey),
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorStyle: TextStyle(fontSize: 12, height: 0.1),
        hintStyle: getstyle(15, FontWeight.normal, Colors.grey),
        hintText: "Absolute Value of Sending End voltage",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField argumentofvs() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(
          decimal: true,
          signed: false),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
        TextInputFormatter.withFunction((oldValue, newValue) {
          try {
            final text = newValue.text;
            if (text.isNotEmpty) double.parse(text);
            return newValue;
          } catch (e) {}
          return oldValue;
        }),
      ],
      onSaved: (newValue) => vsarg = newValue!,
      controller: _vsarg,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter Argument of Sending End Voltage';
        }
        return null;
      },
      cursorColor: Colors.grey,
      style: getstyle(15, FontWeight.normal, Colors.grey),
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorStyle: TextStyle(fontSize: 12, height: 0.1),
        hintStyle: getstyle(15, FontWeight.normal, Colors.grey),
        hintText: "Argument of Sending End Voltage",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField Complexpower() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(
          decimal: true,
          signed: false),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
        TextInputFormatter.withFunction((oldValue, newValue) {
          try {
            final text = newValue.text;
            if (text.isNotEmpty) double.parse(text);
            return newValue;
          } catch (e) {}
          return oldValue;
        }),
      ],

      onSaved: (newValue) => complexpower = newValue!,
      controller: _complexpower,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter Frequency';
        }
        return null;
      },
      cursorColor: Colors.grey,
      style: getstyle(15, FontWeight.normal, Colors.grey),
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorStyle: TextStyle(fontSize: 12, height: 0.1),
        hintStyle: getstyle(15, FontWeight.normal, Colors.grey),
        hintText: "Complex Power (absolute value)",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField Powerfactor() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(
          decimal: true,
          signed: true),
      // inputFormatters: [
      //   FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
      //   TextInputFormatter.withFunction((oldValue, newValue) {
      //     try {
      //       final text = newValue.text;
      //       if (text.isNotEmpty) double.parse(text);
      //       return newValue;
      //     } catch (e) {}
      //     return oldValue;
      //   }),
      // ],

      onSaved: (newValue) => powerfactor = newValue!,
      controller: _powerfactor,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter Frequency';
        }
        return null;
      },
      cursorColor: Colors.grey,
      style: getstyle(15, FontWeight.normal, Colors.grey),
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorStyle: TextStyle(fontSize: 12, height: 0.1),
        hintStyle: getstyle(15, FontWeight.normal, Colors.grey),
        hintText: "Power Factor",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField Current() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(
          decimal: true,
          signed: false),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
        TextInputFormatter.withFunction((oldValue, newValue) {
          try {
            final text = newValue.text;
            if (text.isNotEmpty) double.parse(text);
            return newValue;
          } catch (e) {}
          return oldValue;
        }),
      ],

      onSaved: (newValue) => current = newValue!,
      controller: _current,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter Current';
        }
        return null;
      },
      cursorColor: Colors.grey,
      style: getstyle(15, FontWeight.normal, Colors.grey),
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorStyle: TextStyle(fontSize: 12, height: 0.1),
        hintStyle: getstyle(15, FontWeight.normal, Colors.grey),
        hintText: "Current",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField Argumentofcurrent() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(
          decimal: true,
          signed: true),
      // inputFormatters: [
      //   FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
      //   TextInputFormatter.withFunction((oldValue, newValue) {
      //     try {
      //       final text = newValue.text;
      //       if (text.isNotEmpty) double.parse(text);
      //       return newValue;
      //     } catch (e) {}
      //     return oldValue;
      //   }),
      // ],

      onSaved: (newValue) => argumentofcurrent = newValue!,
      controller: _argumentofcurrent,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter Argument Of Current';
        }
        return null;
      },
      cursorColor: Colors.grey,
      style: getstyle(15, FontWeight.normal, Colors.grey),
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorStyle: TextStyle(fontSize: 12, height: 0.1),
        hintStyle: getstyle(15, FontWeight.normal, Colors.grey),
        hintText: "Argument Of Current",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField Capacitance() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(
          decimal: true,
          signed: false),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
        TextInputFormatter.withFunction((oldValue, newValue) {
          try {
            final text = newValue.text;
            if (text.isNotEmpty) double.parse(text);
            return newValue;
          } catch (e) {}
          return oldValue;
        }),
      ],

      onSaved: (newValue) => capacitance = newValue!,
      controller: _capacitance,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter Capacitance';
        }
        return null;
      },
      cursorColor: Colors.grey,
      style: getstyle(15, FontWeight.normal, Colors.grey),
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorStyle: TextStyle(fontSize: 12, height: 0.1),
        hintStyle: getstyle(15, FontWeight.normal, Colors.grey),
        hintText: "Capacitance",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }


//  ----------receiving end

  TextFormField LinelengthR() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(
          decimal: true,
          signed: false),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
        TextInputFormatter.withFunction((oldValue, newValue) {
          try {
            final text = newValue.text;
            if (text.isNotEmpty) double.parse(text);
            return newValue;
          } catch (e) {}
          return oldValue;
        }),
      ],

      onSaved: (newValue) => linelengthR = newValue!,
      controller: _linelengthR,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter Line Length';
        }
        return null;
      },
      cursorColor: Colors.grey,
      style: getstyle(15, FontWeight.normal, Colors.grey),
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorStyle: TextStyle(fontSize: 12, height: 0.1),


        focusColor: Colors.blue,
        hintStyle: getstyle(15, FontWeight.normal, Colors.grey),
        hintText: "Line Length",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField ResistanceR() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(
          decimal: true,
          signed: false),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
        TextInputFormatter.withFunction((oldValue, newValue) {
          try {
            final text = newValue.text;
            if (text.isNotEmpty) double.parse(text);
            return newValue;
          } catch (e) {}
          return oldValue;
        }),
      ],

      onSaved: (newValue) => resistanceR = newValue!,
      controller: _resistanceR,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter Resistance';
        }
        return null;
      },
      cursorColor: Colors.grey,
      style: getstyle(15, FontWeight.normal, Colors.grey),
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorStyle: TextStyle(fontSize: 12, height: 0.1),
        hintStyle: getstyle(15, FontWeight.normal, Colors.grey),
        hintText: "Resistance",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField InductanceR() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(
          decimal: true,
          signed: false),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
        TextInputFormatter.withFunction((oldValue, newValue) {
          try {
            final text = newValue.text;
            if (text.isNotEmpty) double.parse(text);
            return newValue;
          } catch (e) {}
          return oldValue;
        }),
      ],

      onSaved: (newValue) => inductanceR = newValue!,
      controller: _inductanceR,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter Inductance';
        }
        return null;
      },
      cursorColor: Colors.grey,
      style: getstyle(15, FontWeight.normal, Colors.grey),
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorStyle: TextStyle(fontSize: 12, height: 0.1),
        hintStyle: getstyle(15, FontWeight.normal, Colors.grey),
        hintText: "Inductance",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField CapacitanceR() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(
          decimal: true,
          signed: false),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
        TextInputFormatter.withFunction((oldValue, newValue) {
          try {
            final text = newValue.text;
            if (text.isNotEmpty) double.parse(text);
            return newValue;
          } catch (e) {}
          return oldValue;
        }),
      ],

      onSaved: (newValue) => capacitanceR = newValue!,
      controller: _capacitanceR,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter Capacitance';
        }
        return null;
      },
      cursorColor: Colors.grey,
      style: getstyle(15, FontWeight.normal, Colors.grey),
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorStyle: TextStyle(fontSize: 12, height: 0.1),
        hintStyle: getstyle(15, FontWeight.normal, Colors.grey),
        hintText: "Capacitance",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField FrequencyR() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(
          decimal: true,
          signed: false),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
        TextInputFormatter.withFunction((oldValue, newValue) {
          try {
            final text = newValue.text;
            if (text.isNotEmpty) double.parse(text);
            return newValue;
          } catch (e) {}
          return oldValue;
        }),
      ],

      onSaved: (newValue) => frequencyR = newValue!,
      controller: _frequencyR,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter Frequency';
        }
        return null;
      },
      cursorColor: Colors.grey,
      style: getstyle(15, FontWeight.normal, Colors.grey),
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorStyle: TextStyle(fontSize: 12, height: 0.1),
        hintStyle: getstyle(15, FontWeight.normal, Colors.grey),
        hintText: "Frequency",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField absolutevalueofvr() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(
          decimal: true,
          signed: false),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
        TextInputFormatter.withFunction((oldValue, newValue) {
          try {
            final text = newValue.text;
            if (text.isNotEmpty) double.parse(text);
            return newValue;
          } catch (e) {}
          return oldValue;
        }),
      ],

      onSaved: (newValue) => absvr = newValue!,
      controller: _absvr,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter Absolute Value of Receiving End voltage';
        }
        return null;
      },
      cursorColor: Colors.grey,
      style: getstyle(15, FontWeight.normal, Colors.grey),
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorStyle: TextStyle(fontSize: 12, height: 0.1),
        hintStyle: getstyle(15, FontWeight.normal, Colors.grey),
        hintText: "Absolute Value of Receiving End voltage",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField argumentofvr() {
    return TextFormField(

      keyboardType: TextInputType.numberWithOptions(
          decimal: true,
          signed: false),
      // inputFormatters: [
      //   FilteringTextInputFormatter.allow(RegExp(r"[-9-9.]")),
      //   TextInputFormatter.withFunction((oldValue, newValue) {
      //     try {
      //       final text = newValue.text;
      //       if (text.isNotEmpty) double.parse(text);
      //       return newValue;
      //     } catch (e) {}
      //     return oldValue;
      //   }),
      // ],
      onSaved: (newValue) => vrarg = newValue!,
      controller: _vrarg,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter Argument of Receiving End Voltage';
        }
        return null;
      },
      cursorColor: Colors.grey,
      style: getstyle(15, FontWeight.normal, Colors.grey),
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorStyle: TextStyle(fontSize: 12, height: 0.1),
        hintStyle: getstyle(15, FontWeight.normal, Colors.grey),
        hintText: "Argument of Receiving End Voltage",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField ComplexpowerR() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(
          decimal: true,
          signed: false),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
        TextInputFormatter.withFunction((oldValue, newValue) {
          try {
            final text = newValue.text;
            if (text.isNotEmpty) double.parse(text);
            return newValue;
          } catch (e) {}
          return oldValue;
        }),
      ],

      onSaved: (newValue) => complexpowerR = newValue!,
      controller: _complexpowerR,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter Frequency';
        }
        return null;
      },
      cursorColor: Colors.grey,
      style: getstyle(15, FontWeight.normal, Colors.grey),
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorStyle: TextStyle(fontSize: 12, height: 0.1),
        hintStyle: getstyle(15, FontWeight.normal, Colors.grey),
        hintText: "Complex Power (absolute value)",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField PowerfactorR() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(
          decimal: true,
          signed: false),


      onSaved: (newValue) => powerfactorR = newValue!,
      controller: _powerfactorR,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter Frequency';
        }
        return null;
      },
      cursorColor: Colors.grey,
      style: getstyle(15, FontWeight.normal, Colors.grey),
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorStyle: TextStyle(fontSize: 12, height: 0.1),
        hintStyle: getstyle(15, FontWeight.normal, Colors.grey),
        hintText: "Power Factor",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField CurrentR() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(
          decimal: true,
          signed: false),
      inputFormatters: [
        FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
        TextInputFormatter.withFunction((oldValue, newValue) {
          try {
            final text = newValue.text;
            if (text.isNotEmpty) double.parse(text);
            return newValue;
          } catch (e) {}
          return oldValue;
        }),
      ],

      onSaved: (newValue) => currentR = newValue!,
      controller: _currentR,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter Current';
        }
        return null;
      },
      cursorColor: Colors.grey,
      style: getstyle(15, FontWeight.normal, Colors.grey),
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorStyle: TextStyle(fontSize: 12, height: 0.1),
        hintStyle: getstyle(15, FontWeight.normal, Colors.grey),
        hintText: "Current",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField ArgumentofcurrentR() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(
          decimal: true,
          signed: true),


      onSaved: (newValue) => argumentofcurrentR = newValue!,
      controller: _argumentofcurrentR,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Enter Argument Of Current';
        }
        return null;
      },
      cursorColor: Colors.grey,
      style: getstyle(15, FontWeight.normal, Colors.grey),
      decoration: InputDecoration(
        border: InputBorder.none,
        focusedBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        errorStyle: TextStyle(fontSize: 12, height: 0.1),
        hintStyle: getstyle(15, FontWeight.normal, Colors.grey),
        hintText: "Argument Of Current",
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }





}


