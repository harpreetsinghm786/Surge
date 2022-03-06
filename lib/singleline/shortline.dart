import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../components/responsive.dart';
import '../components/sidemenu.dart';
import '../contants.dart';
import 'components.dart';

class Shortline extends StatelessWidget {
  const Shortline({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isdesktop(context)
          ? null
          : AppBar(
          backgroundColor: bgcolor,
          leading: Builder(
            builder: (context)=>IconButton(onPressed: (){
              Scaffold.of(context).openDrawer();
            }, icon: Icon(Icons.menu)),
          )
      ),
      drawer: SideMenu(),
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isdesktop(context))
                Expanded(flex: 2, child: SideMenu()),
              SizedBox(
                width: Responsive.isdesktop(context)?defaultpadding:15,
              ),
              Expanded(
                flex: 7,
                child: Shortlinescreen(),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
