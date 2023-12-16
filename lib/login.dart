import 'package:easy_flight/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'navbar.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final auth = FirebaseAuth.instance;
  late String Email;
  late String Password;
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF675FE1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 120.0),
              Text(
                'Welcome Back',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36.17,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                'Thank you for choosing EasyFlight for your travel needs. We look forward to being your trusted companion on your next adventure.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFE6E6E6),
                  fontSize: 14.47,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 80.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    ' Email',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w900,
                      height: 0,
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  TextFormField(
                    controller: _usernameController,
                    onChanged: (value) {
                      Email = value;
                    },
                    decoration: InputDecoration(
                      hintText: 'example@gmail.com',
                      contentPadding: const EdgeInsets.all(10),
                      labelStyle: TextStyle(color: Color(0xFFE6E6E6)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Color(0xFFE6E6E6)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Color(0xFFE6E6E6)),
                      ),
                      prefixIcon: const Icon(
                        Icons.mail,
                        color: Color(0xFFE6E6E6),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    ' Password',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w900,
                      height: 0,
                    ),
                  ),
                  const SizedBox(height: 12.0),
                  TextFormField(
                    onChanged: (value) {
                      Password = value;
                    },
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "************",
                      contentPadding: const EdgeInsets.all(10),
                      labelStyle: TextStyle(color: Color(0xFFE6E6E6)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Color(0xFFE6E6E6)),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Color(0xFFE6E6E6)),
                      ),
                      prefixIcon: const Icon(
                        Iconsax.lock,
                        color: Color(0xFFE6E6E6),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot Password ?',
                    style: TextStyle(
                      color: Color(0xFF001689), //001689
                      fontSize: 14.47,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40.0),
              Center(
                child: Container(
                  width: 300.72,
                  height: 55.31,
                  decoration: ShapeDecoration(
                    gradient: LinearGradient(
                      begin: Alignment(-0.95, -0.31),
                      end: Alignment(0.50, 0.31),
                      colors: [
                        Color(0xFF2E79F6),
                        Color(0xFF4967E5),
                        Color(0xFF672FB6)
                      ],
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x2D99AAC5),
                        blurRadius: 68.58,
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: ElevatedButton(
                    onPressed: () async {
                      try {
                        var user = await auth.signInWithEmailAndPassword(
                            email: Email, password: Password);
                        if (user != null) {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return navbar();
                          }));
                        }
                      } catch (e) {
                        print(e);
                      }
                      String name = _usernameController.text;
                      print('Email: $name');
                      String pass = _passwordController.text;
                      print('Password: $pass');
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.49,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0,
                        letterSpacing: 0.93,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'You dont have an account yet ? ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.27,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => sign()),
                      );
                    },
                    style: TextButton.styleFrom(
                      primary: Colors.transparent,
                    ),
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: Color.fromARGB(255, 139, 255, 107),
                        fontSize: 16,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
