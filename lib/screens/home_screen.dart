import 'package:bottom_navigation_bar/reusable.dart';
import 'package:bottom_navigation_bar/screens/login_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: myBottomNavBar(
        currentIndex,
        (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: [
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('home'),
              ),
              ElevatedButton(
                child: Text('login'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (builder) => LoginScreen()));
                },
              ),
            ],
          ),
        ),
        Center(child: Text('profile'))
      ].elementAt(currentIndex),
    );
  }
}
