import 'package:felis_catus/screens/forget_password/forget_password.dart';
import 'package:felis_catus/screens/home/home_page.dart';
import 'package:felis_catus/screens/register/register_page.dart';
import 'package:flutter/material.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginkey=GlobalKey<FormState>();
  bool passVisible = false;

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var email="", password="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
              key: _loginkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (value) {
                        if(value!.isEmpty){
                          return 'Please enter email';
                        }
                        return null;
                      },
              controller: emailController,
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: "Enter email",
                    border: OutlineInputBorder()),
              ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                        obscureText: !passVisible,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter password';
                          }
                          return null;
                        },
                        controller: passwordController,
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            labelText: "Password",
                            suffixIcon: IconButton(
                                onPressed: (){
                                  setState(() {
                                    passVisible = !passVisible;
                                  });
                                },
                                icon: Icon(passVisible ?
                                Icons.visibility: Icons.visibility_off)))),
                  ),
                ]
              )
    ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(onPressed: () {
                      setState(() {
                        Navigator.pushReplacement(context,
                        MaterialPageRoute(builder:
                        (context) => const ForgetPassword(),));
                    });
                    },
                      child: const Text("Forget password?")),
                  ),
              ),
                SizedBox(
                  height: 40,
                  width: 200,
                  child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      if (_loginkey.currentState!.validate()) {
                        var message = const SnackBar(content: Text("Success"));
                        ScaffoldMessenger.of(context).showSnackBar(message);

                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder:
                                (context) => const HomePage(),));
                      }
                    }
                  );
                },
                    child: const Text("Login"),

            ),
          ),
                TextButton(onPressed: () {
                  setState(() {
                  Navigator.pushReplacement(context,
                  MaterialPageRoute(builder:
                      (context) => const RegisterPage(),));
            });
          },
                  child: const Text("No account? Create One")),

    ]
      ),
    );
    // ),
  }
}
