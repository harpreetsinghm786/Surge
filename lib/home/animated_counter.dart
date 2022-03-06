import 'package:flutter/material.dart';

import '../contants.dart';


class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({Key? key, required this.value, required this.text}) : super(key: key);
  final int value;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(tween: IntTween(begin: 0,end: value), duration:defaultduration*2, builder: (context,value,child)=>Text(
      "$value$text",
      style: Theme.of(context).textTheme.headline6!.copyWith(color: primaryColor),
    ));
  }
}

class Highlighted extends StatelessWidget {
  const Highlighted({Key? key, required this.counter, required this.label}) : super(key: key);

  final Widget counter;
  final String? label;
  @override
  Widget build(BuildContext context) {
    return  Row(children: [
      counter,
      SizedBox(width: defaultpadding/4,),
      Text(label!,style: Theme.of(context).textTheme.subtitle2,),
    ],);
  }
}


