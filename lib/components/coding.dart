import 'package:flutter/material.dart';

import '../contants.dart';
import 'animated_progressbar.dart';


class Coding extends StatelessWidget {
  const Coding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: defaultpadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Divider(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: defaultpadding),
            child: Text(
              "Coding",
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
          AnimatedLinearProgressbar(value: 0.7, title: "Dart"),
          AnimatedLinearProgressbar(value: 0.68, title: "Java"),
          AnimatedLinearProgressbar(value: 0.65, title: "C++"),
          AnimatedLinearProgressbar(value: 0.75, title: "HTML"),
          AnimatedLinearProgressbar(value: 0.58, title: "CSS"),


        ],
      ),
    );
  }
}
