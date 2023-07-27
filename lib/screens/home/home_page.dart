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
        actions: [
          PopupMenuButton(
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(child: Text('Cat details')),
                  const PopupMenuItem(child: Text('Category'))
                ];
              },
          ),
        ],
        title: const Text('Welcome to Felis Catus'),
      ),

      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,

          children: [
            Container(
            height: 30,
            width: 30,
            color: Colors.white,
            child: const Align(
              alignment: Alignment.center,
              child: Icon(Icons.search),
            ),
          ),
      ],
          ),
          Row(
            children: [
              SizedBox(
                width: 250,
                child: ElevatedButton(onPressed: () {

                  }, child: const Text("Enter the details of the Cat")),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(

                width: 250,
                child: ElevatedButton(onPressed: () {

                  }, child: const Text("My Cat list")),
              ),
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: 250,
                child: ElevatedButton(onPressed: () {

                  }, child: const Text("Location of accessories shop")),
              ),
              const Icon(Icons.location_pin),
            ],
          )
        ],
      ),
    );
  }
}
