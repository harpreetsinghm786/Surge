import 'package:flutter/material.dart';
import 'package:sergeapp/components/responsive.dart';

import '../contants.dart';


class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 100),
      decoration: BoxDecoration(
        color: Color(0xff242430),

      ),

      child:Responsive.ismobile(context)? Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/icons/logo.png",color: Colors.blue,),
                  ),
                  Text("Surge",style: getstyle(30, FontWeight.w500, Colors.white),)
                ],
              ),

            ),
          SizedBox(height: 50,),
          Container(
              alignment: Alignment.topLeft,

              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: GestureDetector(
                          child: Text("Home",style: getstyle(15, FontWeight.normal, bodytextcolor)) ,
                          onTap: (){},
                        ),
                        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      ),

                      Container(
                        child: GestureDetector(
                          child: Text("About us",style: getstyle(15, FontWeight.normal, bodytextcolor)) ,
                          onTap: (){},
                        ),
                        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      ),

                      Container(
                        child: GestureDetector(
                          child: Text("Catalog",style: getstyle(15, FontWeight.normal, bodytextcolor)) ,
                          onTap: (){},
                        ),
                        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      ),

                      Container(
                        child: GestureDetector(
                          child: Text("Mobile App",style: getstyle(15, FontWeight.normal, bodytextcolor)) ,
                          onTap: (){},
                        ),
                        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      ),


                    ],
                  ),
                  SizedBox(width: 50,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: GestureDetector(
                          child: Text("Short Line",style: getstyle(15, FontWeight.normal, bodytextcolor)) ,
                          onTap: (){},
                        ),
                        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      ),

                      Container(
                        child: GestureDetector(
                          child: Text("Medium Line",style: getstyle(15, FontWeight.normal, bodytextcolor)) ,
                          onTap: (){},
                        ),
                        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      ),

                      Container(
                        child: GestureDetector(
                          child: Text("Long Line",style: getstyle(15, FontWeight.normal, bodytextcolor)) ,
                          onTap: (){},
                        ),
                        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      ),

                      Container(
                        child:  GestureDetector(
                            child: Text("Electricity Bill",style: getstyle(15, FontWeight.normal, bodytextcolor))
                        ),
                        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      ),


                    ],
                  ),
                ],
              ),

            ),

        ],
      ):Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 4,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Container(
                    height: 100,
                    width: 100,
                    child: Image.asset("assets/icons/logo.png",color: Colors.blue,),
                  ),
                  Text("Surge",style: getstyle(30, FontWeight.w500, Colors.white),)
                ],
              ),

            ),),
          Expanded(
            flex: 6,
            child: Container(
              alignment: Alignment.topLeft,

              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: GestureDetector(
                          child: Text("Home",style: getstyle(15, FontWeight.normal, bodytextcolor)) ,
                          onTap: (){},
                        ),
                        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      ),

                      Container(
                        child: GestureDetector(
                          child: Text("About us",style: getstyle(15, FontWeight.normal, bodytextcolor)) ,
                          onTap: (){},
                        ),
                        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      ),

                      Container(
                        child: GestureDetector(
                          child: Text("Catalog",style: getstyle(15, FontWeight.normal, bodytextcolor)) ,
                          onTap: (){},
                        ),
                        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      ),

                      Container(
                        child: GestureDetector(
                          child: Text("Mobile App",style: getstyle(15, FontWeight.normal, bodytextcolor)) ,
                          onTap: (){},
                        ),
                        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      ),


                    ],
                  ),
                  SizedBox(width: 50,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: GestureDetector(
                          child: Text("Short Line",style: getstyle(15, FontWeight.normal, bodytextcolor)) ,
                          onTap: (){},
                        ),
                        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      ),

                      Container(
                        child: GestureDetector(
                          child: Text("Medium Line",style: getstyle(15, FontWeight.normal, bodytextcolor)) ,
                          onTap: (){},
                        ),
                        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      ),

                      Container(
                        child: GestureDetector(
                          child: Text("Long Line",style: getstyle(15, FontWeight.normal, bodytextcolor)) ,
                          onTap: (){},
                        ),
                        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      ),

                      Container(
                        child:  GestureDetector(
                            child: Text("Electricity Bill",style: getstyle(15, FontWeight.normal, bodytextcolor))
                        ),
                        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      ),


                    ],
                  ),
                ],
              ),

            ),
          )
        ],
      ),
    );
  }
}
