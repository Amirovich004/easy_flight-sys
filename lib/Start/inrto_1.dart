import 'package:flutter/material.dart';

class intro_1 extends StatelessWidget {
  const intro_1({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          top: -180,
          child: Image.asset(
            'images/splash1.png', // Replace with your actual asset path
          ),
        ),

        const Positioned(
          width: 350,
          top: 650,
          left: 110,
          child:
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Easy To Use.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: ' Easy Flight',
                  style: TextStyle(
                    color: Color(0xFF33FF00),
                    fontSize: 22,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w900,
                  ),
                ),
                TextSpan(
                  text: ' Search.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
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
