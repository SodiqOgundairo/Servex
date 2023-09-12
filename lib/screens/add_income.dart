import 'package:flutter/material.dart';
import 'package:flutter_application/helpers/styles.dart';

class AddIncomeWidget extends StatefulWidget {
  const AddIncomeWidget({super.key});

  @override
  State<AddIncomeWidget> createState() => _AddIncomeWidgetState();
}

class _AddIncomeWidgetState extends State<AddIncomeWidget> {
  TextEditingController dateController = TextEditingController();

  String paymentType = 'Select Option';
  String expectedPaymentDate = 'Select Option';

  @override
  void dispose() {
    dateController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        dateController.text = picked.toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                    // labelText: 'Yemi Ogundairo',
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
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50.0,
            ),
            Column(
              children: [
                const Text(
                  'Type of Payment',
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
                    value: paymentType,
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
                        paymentType = newValue!;
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
                      DropdownMenuItem<String>(
                        value: 'Type 3',
                        child: Text('Type 3'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50.0,
            ),
            Column(
              children: [
                const Text(
                  'Expected Date of Payment',
                  style: TextStyle(
                    color: kprimaryColor,
                  ),
                ),
                Container(
                  // width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(7)),
                  child: TextField(
                    controller: dateController,
                    decoration: InputDecoration(
                      // labelText: 'Yemi Ogundairo',
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

                      hintText: 'Select a date',
                      hintStyle: const TextStyle(
                        color: Colors.blueAccent,
                        fontStyle: FontStyle.italic,
                      ),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.calendar_today),
                        onPressed: () => _selectDate(context),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50.0,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
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
              child: const Text('Add Income'),
            ),
          ],
        ),
      ),
    );
  }
}
