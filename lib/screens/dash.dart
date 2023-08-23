import 'package:flutter/material.dart';
import 'package:flutter_application/helpers/styles.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Accounts',
          style: TextStyle(color: Colors.blueAccent),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SingleChildScrollView(
              child: Row(
                children: [
                  const SizedBox(
                    // width: 30.0,

                    child: Icon(Icons.add),
                  ),
                  Container(
                    width: 60.0,
                    height: 60.0,
                    // color: kprimaryColor,

                    decoration: const BoxDecoration(
                      // color: kprimaryColor,
                      gradient: LinearGradient(
                        colors: [
                          kaccentColor,
                          kprimaryColor,
                        ],
                      ),
                      shape: BoxShape.circle,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
