import 'package:flutter/material.dart';
// import 'package:flutter_application/screens/auth/login.dart';
// import 'package:flutter_application/screens/auth/signup.dart';
import 'package:flutter_application/screens/dash.dart';
import 'package:flutter_application/screens/pay_biller.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

int currentTab = 0;

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.credit_card),
          label: 'Pay',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.attach_money_rounded),
          label: 'Income',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: currentTab,
      onTap: (int index) {
        setState(() {
          currentTab = index;
        });

        // Update the currentIndex property here
        currentTab = index;

        switch (index) {
          case 0:
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Dashboard()));
            break;
          case 1:
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const PayBiller()));
            break;
          case 2:
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const PayBiller()));
            break;
          case 3:
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const PayBiller()));
            break;
        }
      },
      selectedItemColor: Colors.blue, // Icon and text color when active
      unselectedItemColor: Colors.white, // Icon and text color when inactive
      selectedLabelStyle:
          const TextStyle(color: Colors.blue), // Text style when active
    );
  }
}
