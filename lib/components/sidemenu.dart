import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sergeapp/home/home.dart';
import 'package:sergeapp/singleline/components.dart';
import 'package:sergeapp/singleline/shortline.dart';
import '../contants.dart';
import 'area_info_text.dart';
import 'coding.dart';
import 'knowledge.dart';
import 'info.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Myinfo(),
            Expanded(
              child: SingleChildScrollView(

                padding: EdgeInsets.only(right: defaultpadding,top: defaultpadding,bottom: defaultpadding),
                child: Column(

                  children: [


                    SizedBox(height: 10,),

                    Container(
                      padding: EdgeInsets.only(left: defaultpadding/2),
                      child: Column(
                        children: [
                          ListTile(

                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            title:  Text(
                              "Home",
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            onTap: (){
                              Navigator.pushAndRemoveUntil(context, new MaterialPageRoute(builder: (context)=>Home()), (route) => false);
                            },
                          ),
                          Divider(),
                          ListTile(

                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            title:  Text(
                              "Short Line",
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            onTap: (){
                              Navigator.pushAndRemoveUntil(context, new MaterialPageRoute(builder: (context)=>Shortline()), (route) => false);
                              },
                          ),
                          Divider(),
                          ListTile(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            title: Text(
                              "Medium Line",
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            onTap: (){},
                          ),
                          Divider(),
                          ListTile(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            title:  Text(
                              "Long Line",
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            onTap: (){},
                          ),
                        ],
                      ),
                    ),


                    //
                    // AreaInfoText(
                    //   title: "Residence",
                    //   text: "Punjab",
                    // ),
                    // AreaInfoText(
                    //   title: "City",
                    //   text: "Patiala",
                    // ),
                    // AreaInfoText(
                    //   title: "Age",
                    //   text: "21",
                    // ),
                    // Skills(),
                    // SizedBox(
                    //   height: defaultpadding,
                    // ),
                    // Coding(),
                    Divider(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: defaultpadding),
                      child: Text(
                        "Features",
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ),
                    Knowledge(text: "Parameter Calculations"),
                    Knowledge(text: "Report Formation"),
                    Knowledge(text: "Friendly UI"),
                    Knowledge(text: "Free to Use"),

                    Container(
                      padding: EdgeInsets.only(left: defaultpadding),
                      child: Column(

                        children: [
                          Divider(),
                          SizedBox(
                            height: defaultpadding / 2,
                          ),

                          FlatButton(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                              onPressed: () {},
                              child: FittedBox(
                                child: Row(
                                  children: [
                                    Text(
                                      "DOWNLOAD CATALOG",
                                      style: TextStyle(
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color),
                                    ),
                                    SizedBox(
                                      width: defaultpadding / 2,
                                    ),
                                    Icon(
                                      Icons.download,
                                      color:
                                      Theme.of(context).textTheme.bodyText1!.color,
                                    ),
                                  ],
                                ),
                              )),
                          Container(
                            margin: EdgeInsets.only(top: defaultpadding / 2),
                            color: Color(0xff24242e),
                            child: Row(
                              children: [
                                Spacer(),
                                IconButton(
                                    onPressed: () {},
                                    icon: Image.asset("assets/images/linkedin.png",color: primaryColor,)),
                                IconButton(
                                    onPressed: () {},
                                    icon: Image.asset("assets/images/github.png",color: primaryColor,)),
                                IconButton(
                                    onPressed: () {},
                                    icon: Image.asset("assets/images/twitter.png",color: primaryColor,)),
                                Spacer(),
                              ],
                            ),
                          ),

                          SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Made with ",
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                              Icon(Icons.favorite),
                              Text(
                                " By IITR EE'23",
                                style: Theme.of(context).textTheme.subtitle2,
                              ),
                            ],
                          ),


                          SizedBox(height: 20,),

                        ],
                      ),
                    )

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
