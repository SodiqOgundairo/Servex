import 'package:flutter/material.dart';
import 'package:flutter_application/helpers/styles.dart';
import 'package:flutter_application/screens/profile.dart';

class NotificationSettings extends StatefulWidget {
  const NotificationSettings({super.key});

  @override
  State<NotificationSettings> createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {
  bool isShow = false;
  bool isEmail = false;
  bool isSMS = false;
  bool isPreview = false;
  bool isInApp = false;
  bool isPlay = false;
  bool isVibrate = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Notification Settings',
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
            icon: const Icon(Icons.close, color: Colors.white),
          ),
        ],
      ),
      body: Column(
        children: [
          Column(
            children: [
              const ListTile(
                visualDensity: VisualDensity.compact,
                title: Text(
                  'Message Notifications',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
              ),
              ListBody(
                // color: Colors.grey.shade200,
                children: [
                  ListTile(
                    tileColor: Colors.grey.shade200,
                    shape: const Border(
                      bottom: BorderSide(width: 2, color: Colors.grey),
                    ),
                    title: const Text(
                      'Show Notifications',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 15,
                      ),
                    ),
                    trailing: Switch(
                      value: isShow,
                      onChanged: (bool newBool) {
                        setState(
                          () {
                            isShow = newBool;
                          },
                        );
                      },
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.grey.shade200,
                    shape: const Border(
                      bottom: BorderSide(width: 2, color: Colors.grey),
                    ),
                    title: const Text(
                      'Notify me by email',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 15,
                      ),
                    ),
                    trailing: Switch(
                      value: isEmail,
                      onChanged: (bool newBool) {
                        setState(
                          () {
                            isEmail = newBool;
                          },
                        );
                      },
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.grey.shade200,
                    shape: const Border(
                      bottom: BorderSide(width: 2, color: Colors.grey),
                    ),
                    // isThreeLine: true,
                    subtitle: const Text(
                      'Charges may apply',
                      style: TextStyle(
                        color: Colors.grey,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                    title: const Text(
                      'Notify me by SMS',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 15,
                      ),
                    ),
                    trailing: Switch(
                      value: isSMS,
                      onChanged: (bool newBool) {
                        setState(
                          () {
                            isSMS = newBool;
                          },
                        );
                      },
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.grey.shade200,
                    shape: const Border(
                      bottom: BorderSide(width: 2, color: Colors.grey),
                    ),
                    title: const Text(
                      'Show Preview Popup',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 15,
                      ),
                    ),
                    trailing: Switch(
                      value: isPreview,
                      onChanged: (bool newBool) {
                        setState(
                          () {
                            isPreview = newBool;
                          },
                        );
                      },
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.grey.shade200,
                    shape: const Border(
                      bottom: BorderSide(width: 2, color: Colors.grey),
                    ),
                    title: const Text(
                      'In App notifications',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 15,
                      ),
                    ),
                    trailing: Switch(
                      value: isInApp,
                      onChanged: (bool newBool) {
                        setState(
                          () {
                            isInApp = newBool;
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const ListTile(
                visualDensity: VisualDensity.compact,
                title: Text(
                  'Sounds',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                  ),
                ),
              ),
              ListBody(
                children: [
                  ListTile(
                    tileColor: Colors.grey.shade200,
                    shape: const Border(
                      bottom: BorderSide(width: 2, color: Colors.grey),
                    ),
                    title: const Text(
                      'Play Sound',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 15,
                      ),
                    ),
                    trailing: Switch(
                      value: isPlay,
                      onChanged: (bool newBool) {
                        setState(
                          () {
                            isPlay = newBool;
                          },
                        );
                      },
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.grey.shade200,
                    shape: const Border(
                      bottom: BorderSide(width: 2, color: Colors.grey),
                    ),
                    title: const Text(
                      'Vibrate',
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 15,
                      ),
                    ),
                    trailing: Switch(
                      value: isVibrate,
                      onChanged: (bool newBool) {
                        setState(
                          () {
                            isVibrate = newBool;
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          title: const Text(
                            'Notifications Reset!',
                            style: TextStyle(color: Colors.red),
                          ),
                          content: const Text(
                              'All notifications has been set back to default'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (BuildContext context) {
                                      return const ProfilePage();
                                    },
                                  ),
                                );
                              },
                              child: const Text('Proceed'),
                            ),
                          ],
                        );
                      },
                    ),
                  );
                },
                child: ListTile(
                  visualDensity: VisualDensity.compact,
                  tileColor: Colors.grey.shade200,
                  title: const Text(
                    'Reset Notifications',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 13,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
