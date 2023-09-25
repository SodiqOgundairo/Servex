import 'package:flutter/material.dart';
import 'package:flutter_application/helpers/styles.dart';
import 'package:flutter_application/screens/edit_profile.dart';
import 'package:flutter_application/screens/home.dart';
import 'package:flutter_application/screens/profile_page.dart';
import 'package:flutter_application/widgets/nav_bar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 31, 83),
        title: const Text(
          'Profile',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                color: kprimaryColor,
                width: double.infinity,
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (BuildContext context) {
                              return const EditProfile();
                            },
                          ),
                        );
                      },
                      child: const Positioned(
                        right: 2,
                        top: 5,
                        child: Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Card(
                      shape: const CircleBorder(),
                      elevation: 4,
                      color: Colors.blue.shade100,
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          'JD',
                          style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            color: kprimaryColor,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      'John Doe J.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'johndoe@doe.com',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const MyProfile();
                          },
                        ),
                      );
                    },
                    child: Card(
                      color: Colors.blue.shade100,
                      child: const ListTile(
                        // shape: ListTileTheme(),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        leading: Icon(Icons.person_pin),
                        title: Text('My Profile'),
                        trailing: Icon(Icons.keyboard_arrow_right),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Card(
                      color: Colors.blue.shade100,
                      child: const ListTile(
                        // shape: ListTileTheme(),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        leading: Icon(Icons.notifications_active),
                        title: Text('Notification Settings'),
                        trailing: Icon(Icons.keyboard_arrow_right),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Card(
                      color: Colors.blue.shade100,
                      child: const ListTile(
                        // shape: ListTileTheme(),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        leading: Icon(Icons.compare_arrows_rounded),
                        title: Text('Switch Account'),
                        trailing: Icon(Icons.keyboard_arrow_right),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Card(
                      color: Colors.blue.shade100,
                      child: const ListTile(
                        // shape: ListTileTheme(),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                        leading: Icon(Icons.live_help_rounded),
                        title: Text('Help'),
                        trailing: Icon(Icons.keyboard_arrow_right),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (BuildContext context) {
                            return const HomePage();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'LOGOUT',
                      style: TextStyle(letterSpacing: 20),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset('assets/images/ig_logo.png'),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset('assets/images/twitter.png'),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Image.asset('assets/images/fb_logo.png'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
