import 'package:flutter/material.dart';
import '../contants.dart';

class Myinfo extends StatelessWidget {
  const Myinfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        decoration: BoxDecoration(boxShadow: [BoxShadow(blurRadius: 3,color: darkcolor,spreadRadius: 3)],
          color: Color(0xff242430),
        ),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [
            Spacer(flex: 2,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Container(
                  child: Image.asset("assets/icons/logo.png",height: 100,width: 100,color: primaryColor,),
                ),
                Text("Surge",style: getstyle(30, FontWeight.w500, Colors.white),)
              ],
            ),
            Spacer(flex: 2,),

          ],
        ),
      ),
    );
  }
}
