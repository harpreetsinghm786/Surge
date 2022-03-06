import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sergeapp/singleline/shortline.dart';
import 'home/home.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'contants.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  //FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(MyApp());
  //FlutterNativeSplash.remove();

}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title:"Surge",
      theme: ThemeData.dark().copyWith(
        primaryColor: primaryColor,
        scaffoldBackgroundColor: bgcolor,
        canvasColor: bgcolor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
          bodyText1: TextStyle(color: bodytextcolor),
          bodyText2: TextStyle(color: bodytextcolor),

        ),

      ),
      home: Home(),
    );
  }


}
