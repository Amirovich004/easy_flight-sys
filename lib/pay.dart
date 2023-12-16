// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'Search_screen.dart';
import 'SeatSelectionScreen.dart';
import 'package:iconsax/iconsax.dart';

import 'navbar.dart';

class Pay extends StatefulWidget {
  const Pay({Key? key}) : super(key: key);

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
  bool isSelected1 = false;
  bool isSelected2 = false;
  bool isSelected3 = false;
  bool isSelected4 = false;
  bool isSelected5 = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xFFE1EAEF),
        appBar: AppBar(
          toolbarHeight: 140,
          backgroundColor: Color(0xC4665FD0),
          title: Center(
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'payment',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ],
              ),
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35)),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SeatSelectionScreen(),
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
        body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 12,
                      ),
                      ChoiceChip(
                        backgroundColor: const Color(0xFFC5D7E1),
                        label: const Text(
                          'Master card',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        selected: isSelected1,
                        selectedColor: const Color(0xFF2172D1),
                        pressElevation: 5,
                        onSelected: (newState) {
                          setState(() {
                            isSelected1 = newState;
                          });
                        },
                      ),
                      SizedBox(width: 8),
                      ChoiceChip(
                        backgroundColor: const Color(0xFFC5D7E1),
                        label: const Text(
                          'Visa',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        selected: isSelected2,
                        selectedColor: const Color(0xFF2172D1),
                        pressElevation: 5,
                        onSelected: (newState) {
                          setState(() {
                            isSelected2 = newState;
                          });
                        },
                      ),
                      SizedBox(width: 8),
                      ChoiceChip(
                        backgroundColor: const Color(0xFFC5D7E1),
                        label: const Text(
                          'Paypal',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        selected: isSelected3,
                        selectedColor: const Color(0xFF2172D1),
                        pressElevation: 5,
                        onSelected: (newState) {
                          setState(() {
                            isSelected3 = newState;
                          });
                        },
                      ),
                      SizedBox(width: 8),
                      ChoiceChip(
                        backgroundColor: const Color(0xFFC5D7E1),
                        label: const Text(
                          'MoMo',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontFamily: 'Poppins',
                          ),
                        ),
                        selected: isSelected4,
                        selectedColor: const Color(0xFF2172D1),
                        pressElevation: 5,
                        onSelected: (newState) {
                          setState(() {
                            isSelected4 = newState;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Stack(
                  alignment: Alignment.topCenter,
                  children: [
                    Container(
                      width: 360,
                      height: 440,
                      decoration: ShapeDecoration(
                        color: Colors.white70,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(13.68),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x0C18064D),
                            blurRadius: 5.40,
                            offset: Offset(0, 0),
                            spreadRadius: 8,
                          )
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(50.0),
                              child: TextFormField(
                                style: TextStyle(fontSize: 16),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  labelText: 'Card Number',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: const BorderSide(
                                      color: Color(0xB2675FE1), // Border color
                                      width: 1.0, // Border width
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                        Row(children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(50.0),
                              child: TextFormField(
                                style: TextStyle(fontSize: 15),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  labelText: 'Card Holder',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                    borderSide: const BorderSide(
                                      color: Color(0xB2675FE1), // Border color
                                      width: 1.0,
                                      // Border width
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ]),
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(50.0),
                                child: TextFormField(
                                  style: TextStyle(fontSize: 15),
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    labelText: 'CVV',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      borderSide: const BorderSide(
                                        color:
                                            Color(0xB2675FE1), // Border color
                                        width: 1.0, // Border width
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(50.0),
                                child: TextFormField(
                                  style: TextStyle(fontSize: 15),
                                  decoration: InputDecoration(
                                    iconColor: Colors.deepPurpleAccent,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                    labelText: 'Expiry Date',
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                      borderSide: const BorderSide(
                                        color:
                                            Color(0xB2675FE1), // Border color
                                        width: 1.0, // Border width
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xC4665FD0),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      width: 120,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => navbar()),
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
                          'Cancel',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xC4665FD0),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      width: 120,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Pay()),
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
                          'Confirm',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}
