import 'package:flutter/material.dart';
import 'package:flutter_application/helpers/styles.dart';
import 'package:flutter_application/screens/payment_fail.dart';
import 'package:flutter_application/screens/payment_success.dart';
import 'package:flutter_application/widgets/nav_bar.dart';

class PayBiller extends StatefulWidget {
  const PayBiller({super.key});

  @override
  State<PayBiller> createState() => _PayBiller();
}

class _PayBiller extends State<PayBiller> {
  String billTypeValue = 'Select Option';
  String merchantValue = 'Select Option';
  String productTypeValue = 'Select Option';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Pay a Biller',
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 14,
            ),
          ),
          automaticallyImplyLeading: false,
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.notification_important_sharp),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: (Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text(
                    'Bill Type',
                    style: TextStyle(
                      color: kprimaryColor,
                    ),
                  ),
                  Container(
                    // width: double.infinity,
                    decoration: BoxDecoration(
                      color: kprimaryColor,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      elevation: 0,
                      iconSize: 35,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      value: billTypeValue,
                      icon: const Icon(Icons.arrow_drop_down_rounded),
                      style: const TextStyle(
                        color: Colors.blueAccent,
                      ),
                      // underline: Container(
                      //   height: 2,
                      //   color: Colors.blueAccent,
                      // ),
                      onChanged: (String? newValue) {
                        setState(() {
                          billTypeValue = newValue!;
                        });
                      },
                      items: const [
                        DropdownMenuItem<String>(
                          value: 'Select Option',
                          child: Text(
                            'Select Option',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              // color: Colors.blueAccent,
                            ),
                          ),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Type 1',
                          child: Text('Type 1'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Type 2',
                          child: Text('Type 2'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Type 3',
                          child: Text('Type 3'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    'Merchant',
                    style: TextStyle(
                      color: kprimaryColor,
                    ),
                  ),
                  Container(
                    // width: double.infinity,
                    decoration: BoxDecoration(
                        color: kprimaryColor,
                        borderRadius: BorderRadius.circular(2)),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      elevation: 0,
                      iconSize: 35,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      value: merchantValue,
                      icon: const Icon(Icons.arrow_drop_down_rounded),
                      style: const TextStyle(
                        color: Colors.blueAccent,
                      ),
                      // underline: Container(
                      //   height: 2,
                      //   color: Colors.blueAccent,
                      // ),
                      onChanged: (String? newValue) {
                        setState(() {
                          merchantValue = newValue!;
                        });
                      },
                      items: const [
                        DropdownMenuItem<String>(
                          value: 'Select Option',
                          child: Text(
                            'Select Option',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ),
                        DropdownMenuItem<String>(
                          value: 'FirstBank',
                          child: Text('FirstBank'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'GTBank',
                          child: Text('GTBank'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'AccessBank',
                          child: Text('AccessBank'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'LotusBank',
                          child: Text('LotusBank'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Remita',
                          child: Text('Remita'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    'Product Type',
                    style: TextStyle(
                      color: kprimaryColor,
                    ),
                  ),
                  Container(
                    // width: double.infinity,
                    decoration: BoxDecoration(
                        color: kprimaryColor,
                        borderRadius: BorderRadius.circular(2)),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      elevation: 0,
                      iconSize: 35,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      value: productTypeValue,
                      icon: const Icon(Icons.arrow_drop_down_rounded),
                      style: const TextStyle(
                        color: Colors.blueAccent,
                      ),
                      // underline: Container(
                      //   height: 2,
                      //   color: Colors.blueAccent,
                      // ),
                      onChanged: (String? newValue) {
                        setState(() {
                          productTypeValue = newValue!;
                        });
                      },
                      items: const [
                        DropdownMenuItem<String>(
                          value: 'Select Option',
                          child: Text(
                            'Select Option',
                            style: TextStyle(
                              fontStyle: FontStyle.italic,
                              color: Colors.blueAccent,
                            ),
                          ),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Product 1',
                          child: Text('Product 1'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Product 2',
                          child: Text('Product 2'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Product 3',
                          child: Text('Product 3'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Product 3',
                          child: Text('Product 3'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    'Amount',
                    style: TextStyle(
                      color: kprimaryColor,
                    ),
                  ),
                  TextField(
                    cursorColor: Colors.white,
                    keyboardAppearance: Brightness.dark,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      // labelText: 'Name',
                      contentPadding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                        horizontal: 10.0,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(2),
                      ),
                      fillColor: kprimaryColor,
                      filled: true,
                      prefix: const Text(
                        'N',
                        style: TextStyle(color: Colors.white),
                      ),
                      hintText: 'N',
                      hintStyle: const TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const Text(
                    'Enter PIN',
                    style: TextStyle(
                      color: kprimaryColor,
                    ),
                  ),
                  TextField(
                    cursorColor: Colors.white,
                    keyboardAppearance: Brightness.dark,
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    decoration: InputDecoration(
                        // labelText: 'Name',
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 20.0,
                          horizontal: 10.0,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(2),
                        ),
                        fillColor: kprimaryColor,
                        filled: true,
                        hintText: '***********',
                        hintStyle: const TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const TransactionSuccess();
                          },
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(170, 40),
                      maximumSize: const Size(170, 40),
                      backgroundColor: kprimaryColor,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    child: const Text('Confirm '),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const TransactionFailure();
                          },
                        ),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      minimumSize: const Size(175, 40),
                      maximumSize: const Size(175, 40),
                      foregroundColor: kprimaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    child: const Text('With Biometric'),
                  ),
                ],
              ),
            ],
          )),
        ),
        bottomNavigationBar: BottomNavigationBarWidget()
        // bottomNavigationBar: BottomNavigationBar(
        //   items: const [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       label: 'Home',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.search),
        //       label: 'Search',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.person),
        //       label: 'Profile',
        //     ),
        //   ],
        //   currentIndex: 0,
        //   onTap: (index) {
        //     // Do something when a navigation item is tapped.
        //   },
        // ),
        );
  }
}
