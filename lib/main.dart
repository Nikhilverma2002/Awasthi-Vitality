
import 'package:first_flutter_app/pages/Appointments.dart';
import 'package:first_flutter_app/pages/Payments.dart';
import 'package:first_flutter_app/pages/landing_page.dart';
import 'package:first_flutter_app/pages/login_page.dart';
import 'package:flutter/material.dart';

import 'pages/home_dart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is th e root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //home: HomePage(), TODO: niche routes me default me homepage de diye hai
        themeMode: ThemeMode.system,
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
        ),
        initialRoute: "/payments",
        routes: {
          "/": (context) => LoginPage(),
          "/landing": (context) => LandingPage(),
          "/appointments": (context) => Appointments(),
          "/payments": (context) => Payments(),
         /* //"/home": (context) => HomePage(),

          "/Login" : (context) => LoginPage()*/
        }
    );
  }
}