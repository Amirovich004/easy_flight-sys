import 'package:flutter/material.dart';

class end extends StatelessWidget {
  const end({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          top: -100,
          child: Image.asset(
            'images/logo.png', // Replace with your actual asset path
          ),
        ),
        const Positioned(
          width: 350,
          top: 700,
          left: 14,
          child:
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text:
                      'The application will help you find the best flight ”\n tickets to various destinations in just an app!',
                  style: TextStyle(
                    color: Color.fromARGB(255, 254, 254, 254),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1.2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
