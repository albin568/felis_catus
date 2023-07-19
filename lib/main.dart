import 'package:flutter/material.dart';

import 'screens/login/login_page.dart';
main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
         // primarySwatch: Colors.blue
      ),
      home: const LoginPage(),
    );
  }
}