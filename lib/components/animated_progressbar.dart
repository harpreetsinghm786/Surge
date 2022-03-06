import 'package:flutter/material.dart';

import '../contants.dart';


class AnimatedCircularProgressbarIndicator extends StatelessWidget {
  const AnimatedCircularProgressbarIndicator(
      {Key? key, required this.percentage, required this.label})
      : super(key: key);

  final double percentage;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: defaultduration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: primaryColor,
                  backgroundColor: darkcolor,
                ),
                Center(
                    child: Text(
                      (value * 100).toInt().toString() + "%",
                      style: Theme.of(context).textTheme.subtitle1,
                    ))
              ],
            ),
          ),
        ),
        SizedBox(
          height: defaultpadding / 2,
        ),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        ),
      ],
    );
  }
}



class AnimatedLinearProgressbar extends StatelessWidget {
  const AnimatedLinearProgressbar({Key? key, required this.value, required this.title}) : super(key: key);
  final double value;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: defaultpadding),
      child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: value),
          duration: defaultduration,
          builder: (context,double value, child) => Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title,style: Theme.of(context).textTheme.subtitle2,),
                  Text((value*100).toInt().toString()+"%")
                ],
              ),
              SizedBox(height: defaultpadding/2,),
              LinearProgressIndicator(
                color: primaryColor,
                value: value,
                backgroundColor: darkcolor,
              ),
            ],

          )),
    );
  }
}

