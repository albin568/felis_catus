import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var email="", password="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: "Enter email",
                  border: OutlineInputBorder()),
              ),

            ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                hintText: "Enter password",
                  border: OutlineInputBorder()),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.centerRight,
            child: TextButton(onPressed: () {},
                child: const Text("Forget password?")),
          ),
          ),
          SizedBox(
            height: 40,
            width: 200,
            child: ElevatedButton(
                onPressed: () {
                  setState(() {
                      print(emailController.text + passwordController.text);
                    email = emailController.text;
                    password = passwordController.text;
                  }
                  );
                },
                child: const Text("Login"),
            ),
          ),
          TextButton(onPressed: () {}, child: const Text("No account? Create One")),

        ],
      ),
    );
  }
}
