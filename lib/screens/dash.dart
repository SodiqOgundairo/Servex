import 'package:flutter/material.dart';
import 'package:flutter_application/helpers/styles.dart';
import 'package:flutter_application/screens/add_account.dart';
import 'package:flutter_application/widgets/nav_bar.dart';

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
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const AddAccount();
                          },
                        ),
                      );
                    },
                    child: const SizedBox(
                      child: Icon(Icons.add),
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
            const SizedBox(
              height: 20.0,
            ),
            // const AppNavigationBar(),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromARGB(121, 211, 211, 211),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                  vertical: 5.0,
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: const Text(
                        'Transactions',
                        style: TextStyle(
                          color: kprimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: PopupMenuButton(
                        icon: const Icon(Icons.menu),
                        itemBuilder: (context) => [
                          const PopupMenuItem(
                            value: 1,
                            child: Text(
                              'Expenses',
                              style: TextStyle(color: kaccentColor),
                            ),
                          ),
                          const PopupMenuItem(
                            value: 2,
                            child: Text(
                              'Income',
                              style: TextStyle(color: ksecondaryColor),
                            ),
                          ),
                          const PopupMenuItem(
                            value: 3,
                            child: Text('All'),
                          ),
                        ],
                      ),
                      // trailing: Icon(Icons.menu),
                    ),
                    SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      child: Container(
                        constraints: const BoxConstraints(maxHeight: 222),
                        margin: const EdgeInsets.symmetric(horizontal: 8),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(121, 211, 211, 211),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: SingleChildScrollView(
                          // physics: const AlwaysScrollableScrollPhysics(),
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                  vertical: 5.0,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  // border: const Border(
                                  //   bottom: BorderSide(
                                  //     width: 2,
                                  //     color: Colors.grey,
                                  //   ),
                                  // ),
                                  color:
                                      const Color.fromARGB(255, 211, 211, 211),
                                ),
                                child: ListTile(
                                  leading: const Icon(Icons.compare_arrows),
                                  title: const Column(
                                    children: [
                                      Text(
                                        'IKEDC',
                                        style: TextStyle(
                                          color: kprimaryColor,
                                        ),
                                      ),
                                      Text(
                                        '4/20/22  20:43',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: kprimaryColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  trailing: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(130, 40),
                                      backgroundColor: kaccentColor,
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      'N 20,000.00',
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                  vertical: 5.0,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  // border: const Border(
                                  //   bottom: BorderSide(
                                  //     width: 2,
                                  //     color: Colors.grey,
                                  //   ),
                                  // ),
                                  color:
                                      const Color.fromARGB(255, 211, 211, 211),
                                ),
                                child: ListTile(
                                  leading: const Icon(Icons.compare_arrows),
                                  title: const Column(
                                    children: [
                                      Text(
                                        'SHOPRITE IKEJA',
                                        style: TextStyle(
                                          color: kprimaryColor,
                                        ),
                                      ),
                                      Text(
                                        '4/20/22  14:25',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: kprimaryColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  trailing: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(130, 40),
                                      backgroundColor: kaccentColor,
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      'N 2,000.00',
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                  vertical: 5.0,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  // border: const Border(
                                  //   bottom: BorderSide(
                                  //     width: 2,
                                  //     color: Colors.grey,
                                  //   ),
                                  // ),
                                  color:
                                      const Color.fromARGB(255, 211, 211, 211),
                                ),
                                child: ListTile(
                                  leading: const Icon(Icons.compare_arrows),
                                  title: const Column(
                                    children: [
                                      Text(
                                        'CHUKWU GOZIE',
                                        style: TextStyle(
                                          color: kprimaryColor,
                                        ),
                                      ),
                                      Text(
                                        '4/20/22  14:25',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: kprimaryColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  trailing: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(130, 40),
                                      backgroundColor: ksecondaryColor,
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      'N 200,000.00',
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0,
                                  vertical: 5.0,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  // border: const Border(
                                  //   bottom: BorderSide(
                                  //     width: 2,
                                  //     color: Colors.grey,
                                  //   ),
                                  // ),
                                  color:
                                      const Color.fromARGB(255, 211, 211, 211),
                                ),
                                child: ListTile(
                                  leading: const Icon(Icons.compare_arrows),
                                  title: const Column(
                                    children: [
                                      Text(
                                        'MERANNA',
                                        style: TextStyle(
                                          color: kprimaryColor,
                                        ),
                                      ),
                                      Text(
                                        '4/20/22  14:25',
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: kprimaryColor,
                                        ),
                                      ),
                                    ],
                                  ),
                                  trailing: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: const Size(130, 40),
                                      backgroundColor: kaccentColor,
                                      foregroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      'N 2,000,000.00',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBarWidget());
  }
}
