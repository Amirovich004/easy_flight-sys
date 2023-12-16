import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import 'Search_screen.dart';
import 'my_home.dart';

class navbar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}
class _MyBottomNavigationBarState extends State<navbar> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const home_screen(),
    const Search(),
    ticketScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages[_currentIndex],

      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 5,),
        child: ClipRRect(

          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            backgroundColor: Colors.black,
            selectedItemColor: Colors.deepPurple,
            unselectedItemColor: Colors.deepPurpleAccent,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Iconsax.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.search_normal),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.ticket),
                label: 'Ticket',
              ),
              BottomNavigationBarItem(
                icon: Icon(Iconsax.user),
                label: 'Me',
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class ticketScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: const Color(0xFFC5D7E1),
      body: Center(child: Text('ticketc Page')),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: const Color(0xFFC5D7E1),
      body:Center(child: Text('Profile Page')),
    );
  }
}