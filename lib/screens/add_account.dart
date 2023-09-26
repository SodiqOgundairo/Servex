import 'package:flutter/material.dart';
import 'package:flutter_application/helpers/styles.dart';
import 'package:flutter_application/screens/dash.dart';

class AddAccount extends StatefulWidget {
  const AddAccount({super.key});

  @override
  State<AddAccount> createState() => _AddAccountState();
}

class _AddAccountState extends State<AddAccount> {
  String accountTypeValue = 'Select Option';
  String bankNameValue = 'Select Option';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add new account',
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
            icon: const Icon(Icons.close),
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
                  'Account Type',
                  style: TextStyle(
                    color: kprimaryColor,
                  ),
                ),
                Container(
                  // width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(7)),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    elevation: 0,
                    iconSize: 35,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5,
                    ),
                    value: accountTypeValue,
                    icon: const Icon(Icons.arrow_drop_down_rounded),
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    // underline: Container(
                    //   height: 2,
                    //   color: Colors.blueAccent,
                    // ),
                    onChanged: (String? newValue) {
                      setState(() {
                        accountTypeValue = newValue!;
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
                        value: 'Savings',
                        child: Text('Savings'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Investments',
                        child: Text('Investments'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Checking',
                        child: Text('Checking'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  'Bank',
                  style: TextStyle(
                    color: kprimaryColor,
                  ),
                ),
                Container(
                  // width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(7)),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    elevation: 0,
                    iconSize: 35,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 5,
                    ),
                    value: bankNameValue,
                    icon: const Icon(Icons.arrow_drop_down_rounded),
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                    // underline: Container(
                    //   height: 2,
                    //   color: Colors.blueAccent,
                    // ),
                    onChanged: (String? newValue) {
                      setState(() {
                        bankNameValue = newValue!;
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
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  'Account Name',
                  style: TextStyle(
                    color: kprimaryColor,
                  ),
                ),
                TextField(
                  cursorColor: kprimaryColor,
                  keyboardAppearance: Brightness.dark,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    // labelText: 'XXXXXXXX',
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 0.0,
                      horizontal: 10.0,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: 'Yemi Ogundairo',
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  'Last 6 Digit on your Card',
                  style: TextStyle(
                    color: kprimaryColor,
                  ),
                ),
                TextField(
                  cursorColor: kprimaryColor,
                  keyboardAppearance: Brightness.dark,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    // labelText: 'Name',
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 0.0,
                      horizontal: 10.0,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: '0123456',
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Text(
                  'Transaction PIN',
                  style: TextStyle(
                    color: kprimaryColor,
                  ),
                ),
                TextField(
                  cursorColor: kprimaryColor,
                  keyboardAppearance: Brightness.dark,
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  decoration: InputDecoration(
                    // labelText: 'Name',
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 0.0,
                      horizontal: 10.0,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: 'XXXXXXXX',
                  ),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      title: const Text('Success'),
                      content: const Text('New Account saved succesfully!'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                builder: (BuildContext context) {
                                  return const Dashboard();
                                },
                              ),
                            );
                          },
                          child: const Text('Coninue'),
                        ),
                      ],
                    );
                  },
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(150, 40),
                backgroundColor: kprimaryColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              child: const Text('Save'),
            ),
          ],
        )),
      ),
    );
  }
}
