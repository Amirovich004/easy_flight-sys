import 'package:flutter/material.dart';
class intro_2 extends StatelessWidget {
  const intro_2({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          top: -180,
          child: Image.asset(
            'images/splash2.png', // Replace with your actual asset path
          ),
        ),

        const Positioned(
          width: 350,
          top: 650,
          left: 66,
          child:
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Quick Booking .',
                  style: TextStyle(
                    color: Color(0xFF33FF00),
                    fontSize: 22,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w900,
                  ),
                ),
                TextSpan(
                  text: ' Real-Time',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: ' Flight',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(
                  text: ' Alerts .',
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