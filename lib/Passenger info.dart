// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'Flight Details.dart';
import 'SeatSelectionScreen.dart';
import 'package:iconsax/iconsax.dart';

class Passenger_information extends StatefulWidget {
  const Passenger_information({Key? key}) : super(key: key);

  @override
  State<Passenger_information> createState() => _passsState();
}

class _passsState extends State<Passenger_information> {
  final TextEditingController fname = TextEditingController();
  final TextEditingController lname = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController date = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController tnum = TextEditingController();
  final TextEditingController rnum = TextEditingController();
  final TextEditingController suffix = TextEditingController();
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      if (_counter > 0) {
        _counter--;
      }
    });

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color(0xFFE1EAEF),
          appBar: AppBar(
            toolbarHeight: 140,
            backgroundColor:  Color(0xC4665FD0),
            title: const Center(
              child: Expanded(
                child: Column(
                  children: [
                    Text(
                      'Passenger \n information',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255)

                      ),
                    ),
                  ],
                ),
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35)
              ),
            ),
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Flight_Details(),
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

            child: Padding(
              padding: EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[

                  Text('Passenger 1(Adult)',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),) ,
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: TextFormField(
                            controller: fname,
                            style: TextStyle(fontSize:13),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal:10),
                              labelText: 'First name*',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    15.0),
                                borderSide: const BorderSide(
                                  color: Color(0xB2675FE1), // Border color
                                  width: 1.0, // Border width
                                ),
                              ),

                            ),
                          ),
                        ),
                      ),

                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: TextFormField(
                            controller: lname,
                            style: TextStyle(fontSize:13),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              labelText: 'Last name*',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    15.0),
                                borderSide: const BorderSide(
                                  color: Color(0xB2675FE1), // Border color
                                  width: 1.0, // Border width
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),

                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: TextFormField(
                            controller: suffix,
                            style: TextStyle(fontSize:13),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              labelText: 'Suffix',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    15.0),
                                borderSide: const BorderSide(
                                  color: Color(0xB2675FE1), // Border color
                                  width: 1.0, // Border width
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: TextFormField(
                            controller: date,
                            style: TextStyle(fontSize:13),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              labelText: 'Date of birth* ',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    15.0),
                                borderSide: const BorderSide(
                                  color: Color(0xB2675FE1), // Border color
                                  width: 1.0, // Border width
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: TextFormField(
                            controller: email,
                            style: TextStyle(fontSize:13),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              labelText: 'Email address*',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    15.0),
                                borderSide: const BorderSide(
                                  color: Color(0xB2675FE1), // Border color
                                  width: 1.0, // Border width
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: TextFormField(
                            controller: phone,
                            style: TextStyle(fontSize:13),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              labelText: 'Phone number*',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    15.0),
                                borderSide: const BorderSide(
                                  color: Color(0xB2675FE1), // Border color
                                  width: 1.0, // Border width
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: TextFormField(
                            controller: rnum,
                            style: TextStyle(fontSize:13),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              labelText: 'Redress number',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    15.0),
                                borderSide: const BorderSide(
                                  color: Color(0xB2675FE1), // Border color
                                  width: 1.0, // Border width
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: TextFormField(
                            controller: tnum,
                            style: TextStyle(fontSize:13),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                              labelText: 'Known traveller number*',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    15.0),
                                borderSide: const BorderSide(
                                  color: Color(0xB2675FE1), // Border color
                                  width: 1.0, // Border width
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(height: 8),
                  Column(
                    children: [
                      Container(
                        width:350,
                        height: 50,
                        decoration: ShapeDecoration(
                          color: Color(0xC4C1BBF6),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        ),

                        child: Row(
                          children:[
                            SizedBox(width: 5),
                            SizedBox(height: 10),
                            Text('Add Passenger ',
                              style: TextStyle(
                                color: Color(0xFF2B6BE8),
                                fontSize: 15,
                                fontFamily: 'Nunito Sans',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),

                            SizedBox(width: 20),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                ElevatedButton(
                                  onPressed: _incrementCounter,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:  Color(0xFF605DEC),
                                    onPrimary: Color.fromARGB(255, 255, 255, 255)
                                    ,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16.0),
                                    ),
                                    fixedSize: Size(1.0, 40.0), // Set the fixed width and height
                                  ),
                                  child: Icon(Iconsax.add),
                                ),
                                SizedBox(width: 10),
                                Text(
                                  '$_counter',
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ),
                                ),
                                SizedBox(width: 10),
                                ElevatedButton(
                                  onPressed: _decrementCounter,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor:  Color(0xFF605DEC),
                                    onPrimary: Color.fromARGB(255, 255, 255, 255),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15.0),
                                    ),
                                    fixedSize: Size(1.0, 40.0), // Set the fixed width and height
                                  ),
                                  child: Icon(Icons.remove),

                                ),
                              ],
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Column(

                    children:[
                      Align(
                        alignment: Alignment.topCenter,
                        child: Padding(
                          padding: EdgeInsets.only(right: 150),
                          child: Text(
                            'Bag information',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),
                          ),

                        ),
                      ),
                      SizedBox(height: 10),

                      Container(
                        width: 500,
                        child: SingleChildScrollView(
                          child: Row(
                            children: [
                              SizedBox(width: 10),
                              Text(
                                'Each passenger is allowed\none free carry-on bag and\none personal item. First\nchecked bag for each\npassenger is also free.\n'
                                    ' Second bag check fees are\nwaived for loyalty program\nmembers.See the\nfull bag policy.',
                                style: TextStyle(fontSize: 12),
                              ),
                              SizedBox(width: 18),
                              Image.asset(
                                'images/bag.png',
                                width: 110.0,

                              ),
                            ],
                          ),
                        ),
                      ),

                      SizedBox(height: 30),

                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xC4665FD0),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          width:200,
                          child: ElevatedButton(
                            onPressed: () {
                              String Fname = fname.text;
                              print('First name: $Fname');
                              String Lname =  lname.text;
                              print('Last name: $Lname');
                              String Email = email.text;
                              print('Email: $Email');
                              String Date = date.text;
                              print('Date: $Date');
                              String Phone = phone.text;
                              print('phone: $Phone');
                              String Tnum = tnum.text;
                              print('Redress Number: $Phone');

                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SeatSelectionScreen()),
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
                              'Select seats',
                              style: TextStyle(
                                color: Colors.white, 
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}