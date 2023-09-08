import 'package:flutter/material.dart';
import 'package:flutter_application/screens/auth/login.dart';
import 'package:flutter_application/screens/auth/signup.dart';
import 'package:flutter_application/screens/dash.dart';
import 'package:flutter_application/screens/pay_biller.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return
        // NavigationBar(
        //   destinations: const [
        //     NavigationDestination(
        //       icon: Icon(Icons.home),
        //       label: 'Home',
        //       // backgroundColor: currentTab == 0 ? Colors.blue : Colors.black,
        //     ),
        //     NavigationDestination(
        //       icon: Icon(Icons.credit_card),
        //       label: 'Pay',
        //       // backgroundColor: currentTab == 1 ? Colors.blue : Colors.black,
        //     ),
        //     NavigationDestination(
        //       icon: Icon(Icons.attach_money_rounded),
        //       label: 'Income',
        //       // backgroundColor: currentTab == 2 ? Colors.blue : Colors.black,
        //     ),
        //     NavigationDestination(
        //       icon: Icon(Icons.person),
        //       label: 'Profile',
        //       // backgroundColor: currentTab == 3 ? Colors.blue : Colors.black,
        //     ),
        //   ],
        //   onDestinationSelected: (int index) {
        //     setState(() {
        //       currentTab = index;
        //     });

        //     switch (index) {
        //       case 0:
        //         Navigator.push(
        //             context, MaterialPageRoute(builder: (context) => Dashboard()));
        //         break;
        //       case 1:
        //         Navigator.push(
        //             context, MaterialPageRoute(builder: (context) => SignUpPage()));
        //         break;
        //       case 2:
        //         Navigator.push(
        //             context, MaterialPageRoute(builder: (context) => LoginPage()));
        //         break;
        //       case 3:
        //         Navigator.push(
        //             context, MaterialPageRoute(builder: (context) => PayBiller()));
        //         break;
        //     }
        //   },
        // );
        BottomNavigationBar(
      // backgroundColor: Colors.blue,
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.black),
        BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: 'Pay',
            backgroundColor: Colors.black),
        BottomNavigationBarItem(
            icon: Icon(Icons.attach_money_rounded),
            label: 'Income',
            backgroundColor: Colors.black),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.black),
      ],
      currentIndex: currentTab,
      onTap: (int index) {
        setState(() {
          currentTab = index;
        });

        switch (index) {
          case 0:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Dashboard()));
            break;
          case 1:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SignUpPage()));
            break;
          case 2:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
            break;
          case 3:
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => PayBiller()));
            break;
        }
      },
      selectedLabelStyle: TextStyle(color: Colors.blue),
      selectedIconTheme: IconThemeData(color: Colors.blue),
    );
  }
}
