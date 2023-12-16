import 'package:easy_flight/result_search.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'Passenger info.dart';
class Flight_Details extends StatefulWidget {
  const Flight_Details({Key? key}) : super(key: key);

  @override
  State<Flight_Details> createState() => _Flight_DetailsState();
}

class _Flight_DetailsState extends State<Flight_Details> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: const Color(0xFFE1EAEF),
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 118,
        backgroundColor: Color(0xC4665FD0), // Color(0xC4665FD0)
        title: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Flight Details',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ],
          ),
        ),

        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => const result_search(),
                ));
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Iconsax.setting,
            ),
            color: Colors.white,
            onPressed: () {
              // Handle settings icon press
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.only(
                left: 10.0,
                top: 10,
                right: 10,
              ),
              width: double.infinity,
              height: 90,
              decoration: BoxDecoration(
                color: Color(0xC4665FD0),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35)),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cairo',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'Cairo International\nAirport',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                            width: 80,
                            height: 80,
                            child: Icon(
                              Iconsax.airplane,
                              size: 50.0,
                              color: Colors.white,
                            )),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Jeddah',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                height: 0,
                              ),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(
                              'King Abdulaziz International \nAirport',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w300,
                                height: 0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          Padding(
            padding: EdgeInsets.all(14.0),
            child: Stack(
              children: [
                Image.asset(
                  'images/kik2.png',
                ),

                Column(

                  children: [
                    SizedBox(
                      height: 470,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Passenger_information()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFF635AD9),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            padding: EdgeInsets.all(15.0),
                            fixedSize: Size(200.0, 50.0), // Set the padding
                          ),
                          child: Text(
                            'Passenger information',
                            style: TextStyle(
                              color: Colors.white, // Set the text color
                              fontSize: 13.0,
                              fontWeight: FontWeight.w900,// Set the font size
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),

                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
