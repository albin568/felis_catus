import 'package:flutter/material.dart';

import '../login/login_page.dart';
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmController = TextEditingController();
  var email="", password="", confirm="";
  bool passwordVisible = false;
  bool confirmVisible = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: TextField(
              decoration: InputDecoration(
                label: Text('Name'),
                border: OutlineInputBorder(),
                hintText: "Enter name"
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: emailController,
              decoration: const InputDecoration(
                label: Text('Email'),
                hintText: "Enter email",
                border: OutlineInputBorder()
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              obscureText: passwordVisible,
              controller: passwordController,
              decoration: const InputDecoration(
                label: Text('Password'),
              hintText: "Enter password",
              border: OutlineInputBorder(),
                alignLabelWithHint: false,
                filled: true,
                suffixIcon: Icon(Icons.remove_red_eye),
            ),
              keyboardType: TextInputType.visiblePassword,
              textInputAction: TextInputAction.done,
            ),
          ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  // obscureText: passwordVisible,
                  controller: confirmController,
                  decoration: const InputDecoration(
                    label: Text('Confirm password'),
                    border: OutlineInputBorder(),
                    hintText: "Confirm password",
                  ),
                ),
              ),
              SizedBox(
                height: 40,
                width: 200,
                child: ElevatedButton(onPressed: () {
                  setState(() {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder:
                            (context) => const LoginPage(),));
                  });
                },
                    child: const Text("Register")),
              ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(onPressed: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const LoginPage(),));
            },
                child: const Text("Already have an account?")),
          ),
        ],
      ),
    );
  }
}
