import 'package:flutter/material.dart';
import 'package:flutter_application/helpers/styles.dart';
import 'package:flutter_application/widgets/nav_bar.dart';
import 'package:flutter_application/screens/add_income.dart';

class IncomeWidget extends StatefulWidget {
  const IncomeWidget({super.key});

  @override
  State<IncomeWidget> createState() => _IncomeWidgetState();
}

class _IncomeWidgetState extends State<IncomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Income',
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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Center(
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/images/card_icon.png'),
                            ),
                            Text(
                              'XYZ Ltd',
                              style: TextStyle(
                                color: kprimaryColor,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Salary',
                              style: TextStyle(
                                color: kprimaryColor,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              'N300,000',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Center(
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/images/card_icon.png'),
                            ),
                            Text(
                              'DADDY',
                              style: TextStyle(
                                color: kprimaryColor,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'Allowance',
                              style: TextStyle(
                                color: kprimaryColor,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              'N300,000',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Center(
                        child: Column(
                          children: [
                            Image(
                              image: AssetImage('assets/images/card_icon.png'),
                            ),
                            Text(
                              'Peach ',
                              style: TextStyle(
                                color: kprimaryColor,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              'ROI',
                              style: TextStyle(
                                color: kprimaryColor,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              'N300,000',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const AddIncomeWidget();
                }));
              },
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Center(
                    child: Column(
                      children: [
                        Icon(Icons.add),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
