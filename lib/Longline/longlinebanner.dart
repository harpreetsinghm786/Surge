import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import '../components/responsive.dart';
import '../contants.dart';

class Longlinebanner extends StatelessWidget {
  const Longlinebanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio:Responsive.ismobile(context)?2.5: 3,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              "assets/images/wallpaper.jpg",
              fit: BoxFit.cover,
            ),
            Container(
              color: darkcolor.withOpacity(0.66),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultpadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Medium \nTransmission Lines",
                    style: Responsive.isdesktop(context)
                        ? Theme.of(context).textTheme.headline3!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            )
                        : Theme.of(context).textTheme.headline5!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                  ),
                  if (Responsive.ismobilelarge(context))
                    SizedBox(
                      height: defaultpadding / 2,
                    ),
                  DefaultTextStyle(
                      style: Responsive.ismobilelarge(context)?Theme.of(context).textTheme.subtitle2! :Theme.of(context).textTheme.subtitle1!,
                      child: Row(
                        children: [
                          if (!Responsive.ismobilelarge(context))
                            Text.rich(TextSpan(text: "<", children: [
                              TextSpan(
                                text: "flutter",
                                style: TextStyle(color: primaryColor),
                              ),
                              TextSpan(text: "> "),
                            ])),

                          Text(
                            "We know ",
                          ),
                          AnimatedTextKit(animatedTexts: [
                            TyperAnimatedText("how to build and maintain.",
                                speed: Duration(milliseconds: 60)),
                            TyperAnimatedText("calculations and Stats",
                                speed: Duration(milliseconds: 60)),
                            TyperAnimatedText(
                                "how to manage your calculations",
                                speed: Duration(milliseconds: 60)),
                          ]),
                          if (!Responsive.ismobilelarge(context))
                            Text.rich(TextSpan(text: " </", children: [
                              TextSpan(
                                text: "flutter",
                                style: TextStyle(color: primaryColor),
                              ),
                              TextSpan(text: ">"),
                            ])),
                        ],
                      )),
                  if (!Responsive.ismobilelarge(context))
                    SizedBox(
                      height: defaultpadding,
                    ),

                  if (!Responsive.ismobilelarge(context))
                    ElevatedButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: defaultpadding * 2,
                                vertical: defaultpadding),
                            backgroundColor: primaryColor),
                        child: Text(
                          "EXPLORE NOW",
                          style: TextStyle(color:Colors.white),
                        ))
                ],
              ),
            )
          ],
        ));
  }
}
