import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Account"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: OutlinedButton(onPressed: () {},
                      child: const Text("Owner's Name")),
                ),
              ),
              SizedBox(
                height: 50,
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: OutlinedButton(onPressed: () {},
                      child: const Text("Pet's Name")),
                ),
              ),
              SizedBox(
                height: 50,
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: OutlinedButton(onPressed: () {},
                      child: const Text("Pet's Age")),
                ),
              ),
              SizedBox(
                height: 50,
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: OutlinedButton(onPressed: () {},
                      child: const Text("Address")),
                ),
              ),
              SizedBox(
                height: 50,
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: OutlinedButton(onPressed: () {},
                      child: const Text("My Profile")),
                ),
              ),
            ],
        ),
      ),
    );
  }
}
