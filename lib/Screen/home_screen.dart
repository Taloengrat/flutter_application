import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/Component/BottomNavbar_Component.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

import '../constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: primary,
        title: const Text('Username'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 16),
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(
                      height: MediaQuery.of(context).size.width * 0.5,
                      child: Card(
                        color: generateRandomColor(),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        elevation: 8,
                        child: Container(
                          child: Center(),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: SnakeNavigationBar.color(
        snakeViewColor: primary,
        behaviour: SnakeBarBehaviour.floating,
        snakeShape: SnakeShape.circle,
        elevation: 16,
        currentIndex: 2,
        backgroundColor: kPrimaryColor,
        unselectedItemColor: Colors.grey,
        padding: const EdgeInsets.all(12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        items: [
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
              ),
              label: 'tickets'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today,
              ),
              label: 'calendar'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'home'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.lock,
              ),
              label: 'microphone'),
          const BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: 'search')
        ],
      ),
    );
  }
}

Color generateRandomColor() {
  Random random = Random();
  // Pick a random number in the range [0.0, 1.0)
  double randomDouble = random.nextDouble();

  return Color((randomDouble * 0xFFFFFF).toInt()).withOpacity(1.0);
}
