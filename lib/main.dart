import 'package:flutter/material.dart';
import 'package:task_amit/pages/Register_screen.dart';
import 'package:task_amit/pages/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     initialRoute: "Login" ,
      routes: {
        "Login": (context)=> LoginScreen(),
        "Register": (context)=> RegisterScreen(),
      },
    );
  }
}


