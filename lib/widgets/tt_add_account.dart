// import 'package:flutter/material.dart';
// import 'package:flutter_application/helpers/styles.dart';

// class AddAccount extends StatefulWidget {
//   const AddAccount({super.key});

//   @override
//   State<AddAccount> createState() => _AddAccountState();
// }

// class _AddAccountState extends State<AddAccount> {
  // String dropdownValue = "Savingsa";

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           'Pay Biller',
//           style: TextStyle(
//             color: Colors.blueAccent,
//             fontSize: 14,
//           ),
//         ),
//         automaticallyImplyLeading: false,
//         centerTitle: true,
//         actions: [
//           IconButton(
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//             icon: const Icon(Icons.close),
//           ),
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Column(
//               children: [
//                 const Text(
//                   'Account Type',
//                   style: TextStyle(
//                     color: kprimaryColor,
//                   ),
//                 ),
//                 Container(
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                       color: Colors.grey.shade200,
//                       borderRadius: BorderRadius.circular(10)),
//                   child: DropdownButton(
//                     isExpanded: true,
//                     elevation: 0,
//                     iconSize: 35,
//                     hint: const Text(
//                       'select option',
//                       style: TextStyle(
//                         fontStyle: FontStyle.italic,
//                       ),
//                     ),
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 20,
//                       vertical: 5,
//                     ),
//                     items: const [
//                       DropdownMenuItem(
//                         value: 'savings',
//                         child: Text('Savings'),
//                       ),
//                       DropdownMenuItem(
//                         value: 'checking',
//                         child: Text('Checking'),
//                       ),
//                       DropdownMenuItem(
//                         value: 'investment',
//                         child: Text('Investment'),
//                       ),
//                     ],
//                     onChanged: (context) {},
//                   ),
//                 ),
//               ],
//             ),

//             const SizedBox(
//               height: 20,
//             ),
//             Column(
//               children: [
//                 const Text(
//                   'Account Type',
//                   style: TextStyle(
//                     color: kprimaryColor,
//                   ),
//                 ),
//                 TextField(
//                   cursorColor: kprimaryColor,
//                   keyboardAppearance: Brightness.dark,
//                   keyboardType: TextInputType.name,
//                   decoration: InputDecoration(
//                     labelText: 'Name',
//                     contentPadding: const EdgeInsets.symmetric(
//                       vertical: 0.0,
//                       horizontal: 10.0,
//                     ),
//                     border: OutlineInputBorder(
//                       borderSide: BorderSide.none,
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     fillColor: Colors.grey.shade200,
//                     filled: true,
//                     hintText: 'Yemi Ogundairo',
//                   ),
//                 ),
//               ],
//             ),
//             Center(
//                 child: DropdownButton<String>(
//               value: dropdownValue,
//               icon: const Icon(Icons.arrow_drop_down_outlined),
//               style: const TextStyle(color: Colors.white),
//               underline: Container(
//                 height: 2,
//                 color: Colors.white,
//               ),
//               onChanged: (String? newValue) {
//                 setState(() {
//                   dropdownValue = newValue!;
//                 });
//               },
//               items: const [
//                 DropdownMenuItem<String>(
//                   value: 'savings',
//                   child: Text('Savings'),
//                 ),
//                 DropdownMenuItem<String>(
//                   value: 'checking',
//                   child: Text('Checking'),
//                 ),
//                 DropdownMenuItem<String>(
//                   value: 'investment',
//                   child: Text('Investment'),
//                 ),
//               ],
//             ))
//           ],
//         ),
//       ),
//     );
//   }
// }
