import 'package:flutter/material.dart';
import '../components/responsive.dart';
import '../contants.dart';
import 'animated_counter.dart';

class HighlightInfo extends StatelessWidget {
  const HighlightInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultpadding),
      child: Responsive.ismobilelarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Highlighted(
                        counter: AnimatedCounter(
                          value: 110,
                          text: "+",
                        ),
                        label: "Subscribers"),
                    Highlighted(
                        counter: AnimatedCounter(
                          value: 30,
                          text: "+",
                        ),
                        label: "Videos"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Highlighted(
                        counter: AnimatedCounter(
                          value: 20,
                          text: "+",
                        ),
                        label: "Github Projects"),
                    Highlighted(
                        counter: AnimatedCounter(
                          value: 13,
                          text: "K+",
                        ),
                        label: "Stars"),
                  ],
                )
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Highlighted(
                    counter: AnimatedCounter(
                      value: 110,
                      text: "+",
                    ),
                    label: "Subscribers"),
                Highlighted(
                    counter: AnimatedCounter(
                      value: 30,
                      text: "+",
                    ),
                    label: "Videos"),
                Highlighted(
                    counter: AnimatedCounter(
                      value: 20,
                      text: "+",
                    ),
                    label: "Github Projects"),
                Highlighted(
                    counter: AnimatedCounter(
                      value: 13,
                      text: "K+",
                    ),
                    label: "Stars"),
              ],
            ),
    );
  }
}
