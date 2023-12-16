import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'login.dart';
import 'package:firebase_auth/firebase_auth.dart';

late String fname;

class sign extends StatefulWidget {
  @override
  _signState createState() => _signState();
}

class _signState extends State<sign> {
  final auth = FirebaseAuth.instance;
  late String Name;
  late String Email;
  late String Password;
  late bool showError;
  TextEditingController name = TextEditingController();
  TextEditingController conpass = TextEditingController();
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
              SizedBox(height: 60.0),
              Text(
                'Create an Account',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
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
                  fontSize: 12,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 30.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    ' Full name',
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
                    controller: name,
                    onChanged: (value) {
                      Name = value;
                    },
                    decoration: InputDecoration(
                      hintText: 'Your Name',
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
                        Icons.person,
                        color: Color(0xFFE6E6E6),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20.0),
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
                    controller: _passwordController,
                    onChanged: (value) {
                      Password = value;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: '***************',
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
                  const SizedBox(height: 20.0),
                  const Text(
                    ' Confirm password',
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
                    controller: conpass,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: '***************',
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
                        Iconsax.lock_14,
                        color: Color(0xFFE6E6E6),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0),
              SizedBox(height: 20.0),
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
                      var user = await auth.createUserWithEmailAndPassword(
                          email: Email, password: Password);
                      fname = name.text;
                      print('Full name: $fname');
                      String sname = _usernameController.text;
                      print('Email: $sname');
                      String pass = _passwordController.text;
                      print('Password: $pass');
                      String con = conpass.text;
                      print('Confirm password: $con');
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Sign up',
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
                          text: 'You have an account ? ',
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
                      try {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginScreen()),
                        );
                      } catch (e) {
                        print("Try again");
                      }
                    },
                    style: TextButton.styleFrom(
                      primary: Colors.transparent,
                    ),
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        color: Color.fromARGB(255, 140, 248, 87),
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
