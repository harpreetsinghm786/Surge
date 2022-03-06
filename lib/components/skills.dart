import 'package:flutter/material.dart';

import '../contants.dart';
import 'animated_progressbar.dart';
import 'area_info_text.dart';



class Skills extends StatelessWidget {
  const Skills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: defaultpadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Divider(),
          Padding(
            padding:
            const EdgeInsets.symmetric(vertical: defaultpadding),

            child: Text(
              "Skills",
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: AnimatedCircularProgressbarIndicator(
                    percentage: 0.8,
                    label: "Flutter",
                  )),

              SizedBox(width: defaultpadding,),
              Expanded(
                  child: AnimatedCircularProgressbarIndicator(
                    percentage: 0.72,
                    label: "Android",
                  )),
              SizedBox(width: defaultpadding,),
              Expanded(
                  child: AnimatedCircularProgressbarIndicator(
                    percentage: 0.65,
                    label: "Firebase",
                  )),
            ],
          ),
        ],
      ),
    );
  }
}


