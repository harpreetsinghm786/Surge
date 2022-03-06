import 'package:flutter/material.dart';

import '../contants.dart';


class recommendations extends StatelessWidget {
  const recommendations({Key? key, this.name, this.source}) : super(key: key);
  final String? name,source;

  @override
  Widget build(BuildContext context) {
    return Column(children: [

      SizedBox(height: defaultpadding,),
      Container(
        width: 400,
        padding: EdgeInsets.all(defaultpadding),
        color: secondarycolor,
        child: Column(
          children: [
            Text(name!,maxLines: 2,style: Theme.of(context).textTheme.subtitle2,),
            SizedBox(height: defaultpadding,),
            Text(source!,maxLines: 4,overflow: TextOverflow.ellipsis,style: TextStyle(height: 1.5),),

          ]
          ,
        ),

      ),
      SizedBox(height: defaultpadding,),
    ],);
  }
}

