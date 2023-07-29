import 'package:flutter/material.dart';

import '../login/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _registerkey=GlobalKey<FormState>();
  bool passwordVisible = false;
  bool confirmVisible = false;

  @override
  void initState(){
    super.initState();
  }
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmController = TextEditingController();
  var name="", email="", password="", confirm="";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Registration"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Form(
              key: _registerkey,
                child: Column(
                        children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: nameController,
                          decoration: const InputDecoration(
                          label: Text('Name'),
                            border: OutlineInputBorder(),
                          hintText: "Enter name"
                          ),
                          validator: (value) {
                            if(value!.isEmpty){
                              return 'Please enter name';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          controller: emailController,
                          decoration: const InputDecoration(
                          label: Text('Email'),
                          hintText: "Enter email",
                          border: OutlineInputBorder(),
                ),
                          validator: (value) {
                            if(value!.isEmpty){
                              return 'Please enter email';
                            }
                            return null;
                          },
              ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (value) {
                            if(value!.isEmpty){
                              return 'Please enter password';
                            }
                            return null;
                          },
                          obscureText: !passwordVisible,
                          controller: passwordController,
                          decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              labelText: "Password",
                              hintText: "Enter password",
                              suffixIcon: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      passwordVisible = !passwordVisible;
                                    });
                                  },
                                  icon: Icon(passwordVisible ?
                                  Icons.visibility: Icons.visibility_off)))
                        //   alignLabelWithHint: false,
                        //   filled: true,
                        // ),
              ),
            ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    validator: (value) {
                      if(value!.isEmpty){
                        return 'Please confirm password';
                      }
                      return null;
                    },
                    obscureText: !confirmVisible,
                    controller: confirmController,
                      decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          label: const Text('Confirm password'),
                          hintText: "Confirm password",
                          suffixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  confirmVisible = !confirmVisible;
                                });
                              },
                              icon: Icon(confirmVisible ?
                              Icons.visibility: Icons.visibility_off)))
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: 200,
                  child: ElevatedButton(onPressed: () {
                    setState(() {
                      if (_registerkey.currentState!.validate()) {
                        // var message = const SnackBar(content: Text("Success"));
                        // ScaffoldMessenger.of(context).showSnackBar(message);
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder:
                                (context) => const LoginPage()));
                      }
                    },
                    );
                  },
                      child: const Text("Register")),
                ),
                  TextButton(onPressed: () {
                    Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const LoginPage(),));
                  },
                    child: const Text("Already have an account? Click here")),



                    ],
                ),
    ),
          ),
      ]
    ),
    ),
    );
  }
}
