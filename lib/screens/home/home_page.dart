import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome to Felis Catus'),
      ),
      body: Center(
        child: Container(
      height: 80.0,
      width: 80.0,
      color: Colors.tealAccent,
      child: const Align(
        alignment: Alignment.topRight,
        // child: Icon(
          // size: 60,
        // ),
        // ),
       ),
      ),
      ),
    );
  }
}
