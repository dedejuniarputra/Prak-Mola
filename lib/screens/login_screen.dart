import 'package:flutter/material.dart';
import 'package:myapp/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  bool isEmailValid = false;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F8FB),
      body: ListView(
        children: [
          Expanded(
              child: Container(
            margin: const EdgeInsets.only(top: 75),
            child: Image.asset(
              'assets/Image/JustDuit.png',
              width: 200,
              height: 50,
            ),
          )),
          const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              child: Text(
                "Hi, Welcome Back to JustDuit",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              )),
              SafeArea(
                child: Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Email Address'),
                        Text("*", style: TextStyle(color: Colors.red)
                        ),
                      ],
                    ),
                    SizedBox(height: 5,
                    ),
                    TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 8,
                    ),
                    Row(
                      children: [
                        Text('Password'),
                        Text("*", style: TextStyle(color: Colors.red)
                        ),
                      ],
                    ),
                    SizedBox(height: 8,
                    ),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(horizontal: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: Align(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2730530440.
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                          ),
                          onPressed: () {},
                          child: Text('Forgot Password?',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.blue
                            ),
                          ),
                        ),
                      )),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Color(0xff1e90ff)),
                            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          ),
                          onPressed: () {
                            setState(() {
                              isEmailValid = emailController.text.isNotEmpty;
                            });
                          },
                          child: Text('Sign Now',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          )
                          ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 0),
                        child: TextButton(
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.all<Color>(Color(0xffa4a8ae)),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SignupScreen()));
                          },
                          child: Text('Create New Account',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ),
                      )
                  ]),
              ),
      ),
    ],
    ));
  }
}
