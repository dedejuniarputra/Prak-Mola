import 'package:flutter/material.dart';
import 'package:myapp/screens/signup_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFF6F8F8),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset('assets/Image/gambar.png'),
          )),
          SafeArea(
              child: Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 60),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Column(
              children: [
                const Padding(
                    padding: EdgeInsets.only(top: 16, bottom: 16),
                    child: Text(
                      "Let's Start The Journey",
                      style: TextStyle(
                        fontSize: 22,
                        fontFamily: 'Poppins-Regular',
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    )),
                const Padding(
                    padding: EdgeInsets.only(right: 35, left: 35),
                    child: Text(
                      "Experience Seamles digital transactions with JustDuit",
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Poppins-Regular',
                        color: Color(0XFFA4A8AE),
                      ),
                      textAlign: TextAlign.center,
                    )),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Color(0xff1e90ff)),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignupScreen()));
                    },
                    child: Text("Get Started",
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Poppins-Regular',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 15),
                  child: Text(
                    "I already have an account?",
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins-Regular',
                      color: Color(0XFFA4A8AE),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
