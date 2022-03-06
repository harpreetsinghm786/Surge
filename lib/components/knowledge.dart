import 'package:flutter/material.dart';

import '../contants.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: defaultpadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                Icons.check,
                color: primaryColor,
              ),
              SizedBox(width: defaultpadding/2,),
              Text(text),
            ],
          )
        ],
      ),
    );
  }
}
