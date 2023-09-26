import 'package:flutter/material.dart';
import 'package:flutter_application/helpers/styles.dart';
import 'package:flutter_application/screens/dash.dart';
import 'package:flutter_application/screens/income.dart';
import 'package:flutter_application/screens/profile.dart';
import 'package:flutter_application/screens/pay_biller.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  BottomNavigationBarWidget({super.key});

  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

int currentTab = 0;

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
          backgroundColor: kprimaryColor,
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          backgroundColor: kprimaryColor,
          icon: Icon(Icons.credit_card),
          label: 'Pay',
        ),
        BottomNavigationBarItem(
          backgroundColor: kprimaryColor,
          icon: Icon(Icons.attach_money_rounded),
          label: 'Income',
        ),
        BottomNavigationBarItem(
          backgroundColor: kprimaryColor,
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
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const Dashboard()));
            break;
          case 1:
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const PayBiller()));
            break;
          case 2:
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const IncomeWidget()));
            break;
          case 3:
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const ProfilePage()));
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
