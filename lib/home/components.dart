import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/footer.dart';
import '../components/responsive.dart';
import '../contants.dart';
import 'animated_counter.dart';
import 'highlight_info.dart';
import 'homebanner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: ScrollConfiguration(
          behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        
        child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(right: Responsive.isdesktop(context)?0:15,),
              child: Column(
          children: [
              HomeBanner(),
              //HighlightInfo(),
              Container(
                margin: EdgeInsets.symmetric(horizontal: Responsive.isdesktop(context)? 20:0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    SizedBox(
                      height: 2*defaultpadding,
                    ),

                    Responsive(mobile: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AspectRatio(
                              aspectRatio: 1.8,
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(image: AssetImage("assets/images/powerline.jpeg"),fit: BoxFit.cover)),
                              ),
                            ),

                       Container(
                         margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                         child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(

                                    child:  Text(
                                      "Overhead Transmission Lines",
                                      style: Theme.of(context).textTheme.headline6,
                                    ),
                                    alignment: Alignment.centerLeft,
                                  ),
                                  SizedBox(height: 20,),
                                  Container(
                                    child: Text("An overhead power line is a structure used in electric power transmission and distribution to transmit electrical energy across large distances. It consists of one or more uninsulated electrical cables (commonly multiples of three for three-phase power) suspended by towers or poles."),
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    child: Text("Since most of the insulation is provided by the surrounding air, overhead power lines are generally the least costly method of power transmission for large quantities of electric energy."),
                                  )
                                ],
                              ),
                       )
                      ],
                    ),
                        mobilelarge: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AspectRatio(
                          aspectRatio: 1.8,
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),

                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(image: AssetImage("assets/images/powerline.jpeg"),fit: BoxFit.cover)),
                          ),
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(

                                child:  Text(
                                  "Overhead Transmission Lines",
                                  style: Theme.of(context).textTheme.headline6,
                                ),
                                alignment: Alignment.centerLeft,
                              ),
                              SizedBox(height: 20,),
                              Container(
                                child: Text("An overhead power line is a structure used in electric power transmission and distribution to transmit electrical energy across large distances. It consists of one or more uninsulated electrical cables (commonly multiples of three for three-phase power) suspended by towers or poles."),
                              ),
                              SizedBox(height: 10,),
                              Container(
                                child: Text("Since most of the insulation is provided by the surrounding air, overhead power lines are generally the least costly method of power transmission for large quantities of electric energy."),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                        tablet: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 4,
                            child: AspectRatio(
                              aspectRatio: 1.8,
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(image: AssetImage("assets/images/powerline.jpeg"),fit: BoxFit.cover)),
                              ),
                            )),
                        Expanded(
                            flex: 6,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(

                                  child:  Text(
                                    "Overhead Transmission Lines",
                                    style: Theme.of(context).textTheme.headline6,
                                  ),
                                  alignment: Alignment.centerLeft,
                                ),
                                SizedBox(height: 20,),
                                Container(
                                  child: Text("An overhead power line is a structure used in electric power transmission and distribution to transmit electrical energy across large distances. It consists of one or more uninsulated electrical cables (commonly multiples of three for three-phase power) suspended by towers or poles."),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  child: Text("Since most of the insulation is provided by the surrounding air, overhead power lines are generally the least costly method of power transmission for large quantities of electric energy."),
                                )
                              ],
                            ),)
                      ],
                    ),
                        desktop: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            flex: 4,
                            child: AspectRatio(
                              aspectRatio: 1.8,
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 20),

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: DecorationImage(image: AssetImage("assets/images/powerline.jpeg"),fit: BoxFit.cover)),
                              ),
                            )),
                        Expanded(
                            flex: 6,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(

                                  child:  Text(
                                    "Overhead Transmission Lines",
                                    style: Theme.of(context).textTheme.headline6,
                                  ),
                                  alignment: Alignment.centerLeft,
                                ),
                                SizedBox(height: 20,),
                                Container(
                                  child: Text("An overhead power line is a structure used in electric power transmission and distribution to transmit electrical energy across large distances. It consists of one or more uninsulated electrical cables (commonly multiples of three for three-phase power) suspended by towers or poles."),
                                ),
                                SizedBox(height: 10,),
                                Container(
                                  child: Text("Since most of the insulation is provided by the surrounding air, overhead power lines are generally the least costly method of power transmission for large quantities of electric energy."),
                                )
                              ],
                            ),)
                      ],
                    )),

                   


                    // Responsive(
                    //     mobile: Myprojectcard(crossaxiscount: 1,childAspectRatio: 1.8,),
                    //     mobilelarge: Myprojectcard(
                    //       crossaxiscount: 2,
                    //       childAspectRatio: 1,
                    //     ),
                    //     tablet: Myprojectcard(
                    //       childAspectRatio: 0.99,
                    //     ),
                    //     desktop: Myprojectcard()),
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
}
