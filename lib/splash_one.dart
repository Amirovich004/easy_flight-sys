// ignore_for_file: unused_import, unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:easy_flight/Start/end.dart';
import 'package:easy_flight/Start/inrto_1.dart';
import 'package:easy_flight/Start/intro_2.dart';
import 'package:easy_flight/Start/intro_3.dart';
import 'package:easy_flight/sign_up.dart';

import 'my_home.dart';
import 'navbar.dart';

class Splash_one extends StatefulWidget {
  const Splash_one({super.key});

  @override
  State<Splash_one> createState() => _Splash_oneState();
}

class _Splash_oneState extends State<Splash_one> {
  PageController controll = PageController();

  bool Lastpage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF675FE1),
      body: Stack(
        children: [

          PageView(
            controller: controll,
            onPageChanged: (index) {
              setState(() {
                Lastpage = (index == 3);
              });
            },
            children: const [
              intro_1(),
              intro_2(),
              intro_3(),
              end(),
            ],
          ),

          Container(
            alignment: const Alignment(0, 0.8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    controll.jumpToPage(3);
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 1,
                    ),
                  ),
                ),

                SmoothPageIndicator(
                    controller: controll,
                    count: 4,
                    effect: const ExpandingDotsEffect(
                    dotColor:Colors.white30,
                    activeDotColor: Colors.white,
                    dotHeight: 12,
                    dotWidth: 12,
                    spacing: 8
                ),),

                Lastpage
                    ? GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                          MaterialPageRoute(builder: (context){
                            return sign();
                          }));
                        },
                        child: const Text(
                          'Done',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 1,
                          ),
                        ),
                      )
                    : GestureDetector(
                        onTap: () {
                          controll.nextPage(
                            duration: const Duration(milliseconds: 350),
                            curve: Curves.easeIn,
                          );
                        },
                        child: const Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 1,
                          ),
                        ),
                      )
              ],
            ),
          )
        ],
      ),
    );
  }
}
