import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'sign_up.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});
  
  @override
  State<home_screen> createState() => home_oneState();
}

class home_oneState extends State<home_screen> {
  bool isSelected1 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE1EAEF),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color(0xFFE1EAEF),
        elevation: 0,
        title: const Row(
          children: [
            CircleAvatar(
              radius: 23,
              backgroundImage: AssetImage('images/me.png'),
            ),

            SizedBox(width: 10), // Add some spacing between the image and text

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(
                    color: Color(0xB2675FE1),
                    fontSize: 16,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 1,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  "Muhammedy",
                  style: TextStyle(
                    color: Color(0xFF675FE1),
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w700,
                    height: 0.06,
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              print('Go to setting');
            },
            icon: const Icon(
              Iconsax.setting,
            ),
            color: const Color(0xFF675FE1),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50.0),
            const Row(
              children: [
                SizedBox(width: 10.0),
                Text(
                  'Current offer',
                  style: TextStyle(
                    color: Color(0xFF272726),
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.06,
                  ),
                ),
                SizedBox(width: 130.0),
                Text(
                  'See all',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF675FE1),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.12,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(width: 10.0),
                  Container(
                    width: 255,
                    height: 100,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x0C591B1B),
                          blurRadius: 10,
                          offset: Offset(0, 5),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Column(
                              children: [
                                Image.asset(
                                  'images/Mastercard-logo.png',
                                  width: 75.0,
                                  height: 75.0,
                                ),
                                const SizedBox(height: 10.0),
                                const Text(
                                  '25%OFF',
                                  style: TextStyle(
                                    color: Color(0xFF272726),
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w900,
                                    height: 0.09,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            child: const Column(
                              children: [
                                SizedBox(height: 14.0),
                                Text(
                                  '25% discount  with mastercard',
                                  style: TextStyle(
                                    color: Color(0xFF272726),
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                    height: 1,
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  'Get a discount when you use this.',
                                  style: TextStyle(
                                    color: Color(0xFF80807F),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w300,
                                    height: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Container(
                    width: 255,
                    height: 100,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x0C591B1B),
                          blurRadius: 10,
                          offset: Offset(0, 5),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Column(
                              children: [
                                Image.asset(
                                  'images/Visa.png',
                                  width: 75.0,
                                  height: 75.0,
                                ),
                                const SizedBox(height: 10.0),
                                const Text(
                                  '25%OFF',
                                  style: TextStyle(
                                    color: Color(0xFF272726),
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w900,
                                    height: 0.09,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            child: const Column(
                              children: [
                                SizedBox(height: 14.0),
                                Text(
                                  '20% discount with visa card',
                                  style: TextStyle(
                                    color: Color(0xFF272726),
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                    height: 1,
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  'Get a discount when you use this.',
                                  style: TextStyle(
                                    color: Color(0xFF80807F),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w300,
                                    height: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  Container(
                    width: 255,
                    height: 100,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x0C591B1B),
                          blurRadius: 10,
                          offset: Offset(0, 5),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            child: Column(
                              children: [
                                Image.asset(
                                  'images/Paypal.png',
                                  width: 75.0,
                                  height: 75.0,
                                ),
                                const SizedBox(height: 10.0),
                                const Text(
                                  '23%OFF',
                                  style: TextStyle(
                                    color: Color(0xFF272726),
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w900,
                                    height: 0.09,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ), //الصوره

                        Expanded(
                          flex: 3,
                          child: Container(
                            child: const Column(
                              children: [
                                SizedBox(height: 14.0),
                                Text(
                                  '25% discount  with paypal',
                                  style: TextStyle(
                                    color: Color(0xFF272726),
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                    height: 1,
                                  ),
                                ),
                                SizedBox(height: 10.0),
                                Text(
                                  'Get a discount when you use this.',
                                  style: TextStyle(
                                    color: Color(0xFF80807F),
                                    fontSize: 12,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w300,
                                    height: 1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ), //النص
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50.0),
            const Row(
              children: [
                SizedBox(width: 20.0),
                Text(
                  'Suggested for you',
                  style: TextStyle(
                    color: Color(0xFF272726),
                    fontSize: 20,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0.06,
                  ),
                ),
                SizedBox(width: 78.0),
                Text(
                  'See all',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    color: Color(0xFF675FE1),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    height: 0.12,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    width: 155,
                    height: 185,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x0C591B1B),
                          blurRadius: 10,
                          offset: Offset(0, 5),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'images/img2.png',
                                fit: BoxFit.cover,
                              ),
                              Container(
                                padding: const EdgeInsets.all(3),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'The Bund,',
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 10,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              TextSpan(
                                                text: ' Shanghai',
                                                style: TextStyle(
                                                  color: Color(0xFF605DEC),
                                                  fontSize: 10,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w900,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 20.0),
                                        Text(
                                          '\$563',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Color(0xFF00CF08),
                                            fontSize: 10,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'China’s most international city',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 7,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Container(
                    width: 155,
                    height: 185,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x0C591B1B),
                          blurRadius: 10,
                          offset: Offset(0, 5),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'images/img1.png',
                                fit: BoxFit.cover,
                              ),
                              Container(
                                padding: const EdgeInsets.all(3),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Opera House,',
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 10,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'Sydney',
                                                style: TextStyle(
                                                  color: Color(0xFF605DEC),
                                                  fontSize: 10,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w900,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 15.0),
                                        Text(
                                          '\$563',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Color(0xFF00CF08),
                                            fontSize: 10,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Take a stroll along the famous harbor',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 7,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    width: 310,
                    height: 185,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x0C591B1B),
                          blurRadius: 10,
                          offset: Offset(0, 5),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'images/img3.png',
                                fit: BoxFit.cover,
                              ),
                              Container(
                                padding: const EdgeInsets.all(3),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text:
                                                    'Tsavo East National Park,',
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 10,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'Kenya',
                                                style: TextStyle(
                                                  color: Color(0xFF605DEC),
                                                  fontSize: 10,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w900,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 118.0),
                                        Text(
                                          '\$943',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Color(0xFF00CF08),
                                            fontSize: 10,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Named after the Tsavo River, and opened in April 1984, Tsavo East National Park is one \n of the oldest parks in Kenya. It is located in the semi-arid Taru Desert.',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 7,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8.0),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    width: 155,
                    height: 185,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x0C591B1B),
                          blurRadius: 10,
                          offset: Offset(0, 5),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'images/img1.png',
                                fit: BoxFit.cover,
                              ),
                              Container(
                                padding: const EdgeInsets.all(3),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'Opera House,',
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 10,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              TextSpan(
                                                text: 'Sydney',
                                                style: TextStyle(
                                                  color: Color(0xFF605DEC),
                                                  fontSize: 10,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w900,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 15.0),
                                        Text(
                                          '\$886',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Color(0xFF00CF08),
                                            fontSize: 10,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Take a stroll along the famous harbor',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 7,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  Container(
                    width: 155,
                    height: 185,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x0C591B1B),
                          blurRadius: 10,
                          offset: Offset(0, 5),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                'images/img2.png',
                                fit: BoxFit.cover,
                              ),
                              Container(
                                padding: const EdgeInsets.all(3),
                                child: const Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text.rich(
                                          TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'The Bund,',
                                                style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 10,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                              TextSpan(
                                                text: ' Shanghai',
                                                style: TextStyle(
                                                  color: Color(0xFF605DEC),
                                                  fontSize: 10,
                                                  fontFamily: 'Poppins',
                                                  fontWeight: FontWeight.w900,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: 20.0),
                                        Text(
                                          '\$637',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                            color: Color(0xFF00CF08),
                                            fontSize: 10,
                                            fontFamily: 'Poppins',
                                            fontWeight: FontWeight.w700,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'China’s most international city',
                                      textAlign: TextAlign.right,
                                      style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 7,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
