import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:diet_ideas/pages/chat.dart';
import 'package:diet_ideas/pages/home.dart';
import 'package:diet_ideas/pages/schedule.dart';
import 'package:diet_ideas/pages/settings.dart';
import 'package:diet_ideas/pages/tracker.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Home(),
    ChatPage(),
    Tracker(),
    Schedule(),
    Settings()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        color: const Color(0xFF0047BA),
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: const Color(0xFFFF647E),
        animationDuration: const Duration(milliseconds: 200),
        animationCurve: Curves.easeInBack,
        items: const <Widget>[
          Icon(
            Icons.home,
            size: 25,
            color: Colors.white,
          ),
          Icon(
            Icons.forum,
            size: 25,
            color: Colors.white,
          ),
          Icon(
            Icons.school,
            size: 25,
            color: Colors.white,
          ),
          Icon(
            Icons.calendar_month,
            size: 25,
            color: Colors.white,
          ),
          Icon(
            Icons.settings,
            size: 25,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          _onItemTapped(index);
        },
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
      //   type: BottomNavigationBarType.fixed,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //       backgroundColor: Color(0xFF0047BA),
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.forum),
      //       label: 'Chat',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.school),
      //       label: 'Tracker',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.calendar_month),
      //       label: 'Schedule',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings),
      //       label: 'Settings',
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   backgroundColor: const Color(0xFF0047BA),
      //   selectedItemColor: Colors.amber[600],
      //   unselectedItemColor: Colors.white,
      //   onTap: _onItemTapped,
      // ),
    );
  }
}
