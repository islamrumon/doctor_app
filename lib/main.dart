
import 'package:doctor_app/screens/login_screen.dart';
import 'package:doctor_app/screens/main_screen.dart';
import 'package:doctor_app/screens/register_screen.dart';
import 'package:doctor_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor appointment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MainScreen(),
      // home:  SplashScreen(),
      // home:  LoginScreen(),
      // home:  RegisterScreen(),
    );
  }
}



