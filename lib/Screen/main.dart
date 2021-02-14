import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/Screen/home_screen.dart';
import 'package:flutter_application/Screen/signin_screen.dart';
import 'package:flutter_application/Screen/signup_screen.dart';
import 'package:flutter_application/constants.dart';
import 'package:flutter_application/Screen/begin_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth Screen 1',

      theme: ThemeData(
        fontFamily: 'Staatliches',
        textTheme: TextTheme(
          headline1:
              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          button: TextStyle(color: kPrimaryColor),

        ),
      ),
      home: BeginScreen(),
    );
  }
}


