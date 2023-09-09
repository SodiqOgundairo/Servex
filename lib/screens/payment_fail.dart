import 'package:flutter/material.dart';
import 'package:flutter_application/helpers/styles.dart';
import 'package:flutter_application/screens/dash.dart';
import 'package:flutter_application/screens/pay_biller.dart';

class TransactionFailure extends StatefulWidget {
  const TransactionFailure({super.key});

  @override
  State<TransactionFailure> createState() => _TransactionFailureState();
}

class _TransactionFailureState extends State<TransactionFailure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/images/transaction_fail.png'),
              width: 400,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const PayBiller();
                    },
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(370, 40),
                backgroundColor: kprimaryColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              child: const Text('Retry'),
            ),
            const SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const Dashboard();
                    },
                  ),
                );
              },
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(370, 40),
                // backgroundColor: kprimaryColor,
                foregroundColor: kprimaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(7),
                ),
              ),
              child: const Text('Go Back Home'),
            ),
          ],
        ),
      ),
    );
  }
}
