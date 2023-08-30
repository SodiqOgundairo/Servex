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
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(
                  child: Icon(Icons.add),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.blueAccent,
                        kprimaryColor,
                      ],
                    ),
                    shape: BoxShape.rectangle,
                  ),
                  child: const Column(
                    children: [
                      SizedBox(
                        width: 250,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '1 of 2',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Icon(
                                Icons.remove_red_eye,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      SizedBox(
                        child: Text(
                          'JOHN DOE DROLL',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          '5479 7866 XXXX XXXX',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 250,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total balance',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'N XXXXXXX',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.blueAccent,
                        kprimaryColor,
                      ],
                    ),
                    shape: BoxShape.rectangle,
                  ),
                  child: const Column(
                    children: [
                      SizedBox(
                        width: 250,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '2 of 2',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Icon(
                                Icons.remove_red_eye,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      SizedBox(
                        child: Text(
                          'JOHN DOE DROLL',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Text(
                          '5479 7866 XXXX XXXX',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: 250,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total balance',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'N XXXXXXX',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                color: ksecondaryColor,
                child: IconButton(
                  color: Colors.white,
                  onPressed: () {},
                  icon: const ImageIcon(
                    AssetImage(
                      'assets/images/home.png',
                      // 'assets/images/logo.png',
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.grey.shade200,
                child: IconButton(
                  color: kprimaryColor,
                  onPressed: () {},
                  icon: const ImageIcon(
                    AssetImage(
                      'assets/images/card.png',
                      // 'assets/images/logo.png',
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.grey.shade200,
                child: IconButton(
                  color: kprimaryColor,
                  onPressed: () {},
                  icon: const ImageIcon(
                    AssetImage(
                      'assets/images/money.png',
                      // 'assets/images/logo.png',
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.grey.shade200,
                child: IconButton(
                  color: kprimaryColor,
                  onPressed: () {},
                  icon: const ImageIcon(
                    AssetImage(
                      'assets/images/profile.png',
                      // 'assets/images/logo.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30.0,
          ),
          Container(
              color: Colors.grey,
              width: double.infinity,
              child: Column(
                children: [Text('ss')],
              )),
        ],
      ),
    );
  }
}
