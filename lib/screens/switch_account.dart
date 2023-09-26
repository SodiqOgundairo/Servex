import 'package:flutter/material.dart';
import 'package:flutter_application/helpers/styles.dart';
import 'package:flutter_application/screens/switch_account_login.dart';

class SwitchAccount extends StatelessWidget {
  const SwitchAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Switch Account',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        backgroundColor: kprimaryColor,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.close,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          const ListTile(
            visualDensity: VisualDensity.compact,
            title: Text(
              'Recent Log In',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: ListTile(
              visualDensity: VisualDensity.compact,
              tileColor: Colors.grey.shade200,
              shape: const Border(
                bottom: BorderSide(
                  width: 2,
                  color: Colors.grey,
                ),
              ),
              leading: Card(
                shape: const CircleBorder(),
                elevation: 0,
                color: Colors.blue.shade100,
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'JD',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: kprimaryColor,
                    ),
                  ),
                ),
              ),
              title: const Text(
                'John Doe John',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 15,
                ),
              ),
              subtitle: const Text(
                'Active',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const SwitchAccountLogin();
                  },
                ),
              );
            },
            child: ListTile(
              visualDensity: VisualDensity.compact,
              tileColor: Colors.grey.shade200,
              shape: const Border(
                bottom: BorderSide(
                  width: 2,
                  color: Colors.grey,
                ),
              ),
              leading: Card(
                shape: const CircleBorder(),
                elevation: 0,
                color: Colors.blue.shade100,
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'JM',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: kprimaryColor,
                    ),
                  ),
                ),
              ),
              title: const Text(
                'John Mary John',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 15,
                ),
              ),
              subtitle: const Text(
                'Last seen 2 months ago',
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
