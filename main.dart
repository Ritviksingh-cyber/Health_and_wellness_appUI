
import 'package:flutter/material.dart';
import 'package:flutter_projects/pages/login_homepage/loginpage.dart';
import 'package:flutter_projects/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_projects/pages/login_homepage/home_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {//a stateless widget is a widget in which no change in state of window occurs.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      themeMode: ThemeMode.system,// Means the theme of our application
      theme: ThemeData(
          fontFamily: GoogleFonts.poppins().fontFamily,//Primary swatch is used to set the primary color of our application.
          primarySwatch: Colors.red,// we have to download the package for fonts in flutter
          primaryTextTheme: GoogleFonts.latoTextTheme()),

      darkTheme: ThemeData(
          fontFamily: GoogleFonts.poppins().fontFamily,//Primary swatch is used to set the primary color of our application.
          primarySwatch: Colors.red,// we have to download the package for fonts in flutter
          primaryTextTheme: GoogleFonts.latoTextTheme()
      ),
        debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginRoute,
      routes:
        {
          "/":(context)=> LoginPage(),
          MyRoutes.homeRoute:(context)=>const HomePage(),//Routes to our different pages in application.
            MyRoutes.loginRoute:(context)=>LoginPage(),
          MyRoutes.exerciseRoute:(context)=>HomePage(),
        }
    );
  }
}
