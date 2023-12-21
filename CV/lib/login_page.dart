import 'package:cv/signup.dart';

import 'homepage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool passToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        backgroundColor: Color.fromARGB(255, 179, 170, 26),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 20.0),
                child: const Image(
                  image: AssetImage('images/crownn.png'),
                  height: 300,
                  width: 300,
                ),
              ),
              TextFormField(
                style: const TextStyle(
                  fontFamily: 'RobotoMono',
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'Username',
                  labelStyle: const TextStyle(
                    color: Color.fromARGB(255, 15, 15, 15),
                    fontFamily: 'RobotoMono',
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color.fromARGB(255, 179, 170, 0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color.fromARGB(255, 179, 170, 0)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color.fromARGB(255, 247, 245, 245)),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your Username';
                  } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                      .hasMatch(value)) {
                    return 'Invalid email address';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                style: const TextStyle(
                  fontFamily: 'RobotoMono',
                  color: Color.fromARGB(255, 240, 242, 243),
                ),
                controller: _passwordController,
                obscureText: passToggle,
                decoration: InputDecoration(
                    labelText: 'Password',
                    labelStyle: const TextStyle(
                      color: Color.fromARGB(255, 15, 15, 15),
                      fontFamily: 'RobotoMono',
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color.fromARGB(255, 179, 170, 0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color.fromARGB(255, 179, 170, 0)),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color.fromARGB(255, 250, 249, 249)),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    suffixIcon: InkWell(
                      onTap: () {
                        setState(() {
                          passToggle = !passToggle;
                        });
                      },
                      child: Icon(
                          passToggle ? Icons.visibility : Icons.visibility_off),
                    )),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  } else if (_passwordController.text.length < 6) {
                    return 'Password Length should be more than 6 characters';
                  } else if (!RegExp("")
                      .hasMatch(value)) {
                    return 'The password needs to be valid.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 179, 170, 37),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  if (_formKey.currentState?.validate() == true) {
                    // Check for specific username and password
                    if (_usernameController.text ==
                            "ericka36@gmail.com" &&
                        _passwordController.text == "Eca@1105") {
                      // Successful login
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MyApp(),
                        ),
                      );
                    } else {
                      // Incorrect username or password
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Incorrect username or password'),
                        ),
                      );
                    }
                  }
                },
                child: const Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'RobotoMono',
                    color: Color.fromARGB(255, 255, 254, 254),
                    fontSize: 20,
                  ),
                ),
              ),
                ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SignupPage(),
                    ),
                  );
                }, child: null,
              )
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
    );
  }
}
