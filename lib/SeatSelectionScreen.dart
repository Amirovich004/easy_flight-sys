import 'package:easy_flight/pay.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'Passenger info.dart';

class SeatSelectionScreen extends StatefulWidget {
  @override
  _SeatSelectionScreenState createState() => _SeatSelectionScreenState();
}

class _SeatSelectionScreenState extends State<SeatSelectionScreen> {
  List<bool> isSelected1 = List.generate(10, (index) => false);
  List<bool> isSelected2 = List.generate(30, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE1EAEF),
      appBar: AppBar(
        toolbarHeight: 140,
        backgroundColor:  Color(0xC4665FD0),
        title: Center(

          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                Text(
                  'Seat Selection',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold
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
                  builder: (context) => const Passenger_information(),
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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Text("Class",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            Text("Business",
              style: TextStyle(
                fontSize: 15,color: Color(0xFF45CEB6),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Center(
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 250,
                        height: 100,
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

                        child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 5,
                          ),
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  isSelected1[index] = !isSelected1[index];
                                });
                              },
                              child: SeatWidget(
                                seatNumber: index + 1,
                                isSelected: isSelected1[index],
                              ),
                            );
                          },
                        ),
                      ),


                      const SizedBox(
                        height: 12.0,
                      ),
                      Text("Class",
                        style: TextStyle(
                          fontSize:15,
                        ),
                      ),
                      Text(" Economy",
                        style: TextStyle(
                          fontSize: 15,color:Color(0xC4665FD0),
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        width: 250,
                        height: 300,
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

                        child: GridView.builder(
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 5,
                          ),
                          itemCount: 30,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  isSelected2[index] = !isSelected2[index];
                                });
                              },
                              child: SeatWidget(
                                seatNumber: index + 1,
                                isSelected: isSelected2[index],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xC4665FD0),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    width:200,
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
                        'Payment',
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
    );
  }

  void showAlertDialog(BuildContext context, List<int> selectedSeats) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirm Booking'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Selected Seats: ${selectedSeats.join(', ')}'),
              SizedBox(height: 16),
              Text('Total Amount: \$${selectedSeats.length * 10}'), // Assuming $10 per seat
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                // Add your logic to process the booking
                // For now, just close the dialog
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Seats booked successfully.'),
                  ),
                );
                Navigator.of(context).pop();
              },
              child: Text('Book Now'),
            ),
          ],
        );
      },
    );
  }
}

class SeatWidget extends StatelessWidget {
  final int seatNumber;
  final bool isSelected;

  SeatWidget({required this.seatNumber, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xC4665FD0) : Color(0x1abca8e1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          seatNumber.toString(),
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}