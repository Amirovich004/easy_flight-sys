import 'package:flutter/material.dart';
class intro_3 extends StatelessWidget {
  const intro_3({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          top: -180,
          child: Image.asset(
            'images/splash3.png', // Replace with your actual asset path
          ),
        ),

        const Positioned(
          width: 350,
          top: 650,
          left: 20,
          child:
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Fast  ',
                  style: TextStyle(
                    color: Color(0xFF33FF00),
                    fontSize: 22,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w900,
                  ),
                ),
                TextSpan(
                  text: 'and ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: 'Secure Payment',
                  style: TextStyle(
                    color: Color(0xFF33FF00),
                    fontSize: 22,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w900,
                  ),
                ),
                TextSpan(
                  text: ' Options.',
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