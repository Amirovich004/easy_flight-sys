// ignore_for_file: unused_field, unused_local_variable

import 'package:easy_flight/result_search.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';

class Search extends StatefulWidget {
  const Search({super.key});
  @override
  State<Search> createState() => c_Search();
}

class c_Search extends State<Search> {
  int selectedChoice = 1;
  final formatter = DateFormat.yMd();
  DateTime? selectedDate;
  DateTime selectdate = DateTime.now();

  final TextEditingController _fromController = TextEditingController();
  final TextEditingController _toController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  String selectedValue = '1 Adult';
  String selectedValue2 = 'Economy';

  @override
  Widget build(BuildContext context) {
    var _chosenValue;
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

              SizedBox(
                  width: 10), // Add some spacing between the image and text

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
                    'Muhammedy',
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
              const SizedBox(
                height: 25,
              ),
              Center(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 8.0,left: 8,),

                      width: 320,
                      height: 480,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 4,
                            offset: Offset(0, 4),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            'Book your Flight',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 5,
                              ),
                              ChoiceChip(
                                backgroundColor: const Color(0xFFC5D7E1),
                                label: const Text(
                                  'One Way',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                  ),
                                ),

                                selected: selectedChoice == 1,
                                onSelected: (selected) {
                                  setState(() {
                                    selectedChoice = (selected ? 1 : null)!;
                                  });
                                },

                                selectedColor: const Color(0xFF675FE1),
                                pressElevation: 5,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                        15.0), // Adjust the left side radius
                                    bottomLeft: Radius.circular(
                                        15.0), // Adjust the right side radius
                                  ),
                                ),
                              ),

                              ChoiceChip(
                                backgroundColor: const Color(0xFFC5D7E1),
                                label: const Text(
                                  'Round Trip',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                  ),
                                ),

                                selected: selectedChoice == 2,
                                onSelected: (selected) {
                                  setState(() {
                                    selectedChoice = (selected ? 2 : null)!;
                                  });
                                },
                                selectedColor: const Color(0xFF675FE1),
                                pressElevation: 5,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                        0.0),
                                    bottomLeft: Radius.circular(
                                        0.0),
                                  ),
                                ),

                              ),

                              ChoiceChip(
                                backgroundColor: const Color(0xFFC5D7E1),
                                label: const Text(
                                  'Multi-city',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontFamily: 'Poppins',
                                  ),
                                ),

                                selected: selectedChoice == 3,
                                onSelected: (selected) {
                                  setState(() {
                                    selectedChoice = (selected ? 3 : null)!;
                                  });
                                },
                                selectedColor: const Color(0xFF675FE1),
                                pressElevation: 5,
                                shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(
                                        15.0), // Adjust the left side radius
                                    bottomRight: Radius.circular(
                                        15.0), // Adjust the right side radius
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                ' From',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                              const SizedBox(height: 5.0),
                              TextFormField(
                                controller: _fromController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(10),
                                  labelText: 'From where..!',
                                  prefixIcon:
                                  const Icon(Icons.flight_takeoff_sharp),
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Colors.blue, // Border color
                                      width: 1.0, // Border width
                                    ),
                                    borderRadius: BorderRadius.circular(
                                        15.0), // Border radius
                                  ),
                                ),

                              ),
                              const SizedBox(height: 5.0),
                              const Text(
                                ' To',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                              const SizedBox(height: 5.0),
                              TextFormField(
                                controller: _toController,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.all(10),
                                  labelText: 'Where to..!',
                                  prefixIcon: const Icon(Icons.flight_land_sharp),
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                      color: Color(0xB2675FE1),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(
                                        15.0), // Border radius
                                  ),
                                ),
                              ),

                              const SizedBox(height: 5.0),

                              const Text(
                                ' Departure',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  height: 0,
                                ),
                              ),
                              const SizedBox(height: 5.0),

                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                        15.0),
                                  border: Border.all(
                                    color: Colors.black38,
                                      width: 1.0
                                  ),),

                                child: Row(
                                  children: [
                                    IconButton(
                                      onPressed: () async {
                                        final now = DateTime.now();
                                        final firstDate = DateTime(now.year - 10, now.month, now.day);

                                        final DateTime? pickDate = await showDatePicker(
                                            context: context,
                                            initialDate: now,
                                            firstDate: firstDate,
                                            lastDate: now);
                                        setState(() {
                                          selectedDate = pickDate;
                                        });
                                      },
                                      icon: Icon(Iconsax.calendar5,
                                        color: Colors.black38,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(selectedDate == null ? 'Please Select Date' : formatter.format(selectedDate!)),
                                  ],
                                ),
                              ),

                              const SizedBox(height: 10.0),

                              const Row(
                                children: [
                                  const SizedBox(width: 10.0),
                                  Text(
                                    ' Passenger',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  const SizedBox(width: 80.0),
                                  Text(
                                    ' Class',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5.0),
                              Row(
                                children: [
                                  const SizedBox(width: 30.0),

                                  DropdownButton<String>(
                                    focusColor: Color(0xB2675FE1),
                                    value: selectedValue,
                                    onChanged: (newValue) {
                                      setState(() {
                                        selectedValue = newValue!;
                                      });
                                    },
                                    style: const TextStyle(color: Colors.black),
                                    iconEnabledColor: Colors.black,
                                    items: <String>[
                                      '1 Adult',
                                      '2 Adult',
                                      '3 Adult',
                                    ].map<DropdownMenuItem<String>>(
                                            (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                  ),

                                  const SizedBox(width: 80.0),

                                  DropdownButton<String>(
                                    focusColor: Color(0xB2675FE1),
                                    value: selectedValue2,
                                    onChanged: (newValue) {
                                      setState(() {
                                        selectedValue2 = newValue!;
                                      });
                                    },
                                    style: const TextStyle(color: Colors.black),
                                    iconEnabledColor: Colors.black,
                                    items: <String>[
                                      'Economy',
                                      'Business',
                                    ].map<DropdownMenuItem<String>>(
                                            (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 18.0),
                              Center(
                                child: Container(
                                  width: 200,
                                  height: 40,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      String from = _fromController.text;
                                      print('start: $from');
                                      String to = _toController.text;
                                      print('end: $to');
                                      print('time D/M/Y: $selectedDate');
                                      print('Passenger:  $selectedValue');
                                      print('Class:  $selectedValue2');
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => result_search()),
                                      );

                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFF635AD9), // color: Color(0xB2675FE1),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            15), // Set the border radius
                                      ),
                                    ),
                                    child: const Text('Search',style: TextStyle(color:Color.fromARGB(255, 255, 253, 253) ),),
                                    
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Future<void> selectDate() async {
    await showDatepicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));
  }

  showDatepicker(
      {required BuildContext context,
        required DateTime initialDate,
        required DateTime firstDate,
        required DateTime lastDate}) {}
}
