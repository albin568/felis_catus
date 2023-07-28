import 'package:felis_catus/screens/login/login_page.dart';
import 'package:felis_catus/screens/register/register_page.dart';
import 'package:felis_catus/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
         primarySwatch: Colors.blueGrey
      ),
      home: const SplashScreen(),
      // home: const RegisterPage(),
      // home: const LoginPage(),

    );
  }
}