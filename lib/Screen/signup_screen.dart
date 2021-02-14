import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/Component/TextField_Component.dart';
import 'package:flutter_application/constants.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 26,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          text: 'Create your account',
                          style: TextStyle(
                              fontFamily: 'Staatliches',
                              fontSize: 30,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                  // MyTextField(lalbelText: 'A', icon: Icons.account_box_rounded,),
                  MyTextField(
                    lalbelText: 'First name',
                    icon: Icons.account_box_rounded,
                  ),
                  MyTextField(
                    lalbelText: 'Last name',
                    icon: Icons.account_box_rounded,
                  ),
                  MyTextField(
                    lalbelText: 'Username',
                    icon: Icons.account_box_rounded,
                  ),
                  MyTextField(
                    lalbelText: 'Password',
                    icon: Icons.lock,
                  ),
                  MyTextField(
                    lalbelText: 'Repeat password',
                    icon: Icons.lock,
                  ),
                  MyTextField(
                    lalbelText: 'Email Address',
                    icon: Icons.email_rounded,
                  ),


                  SizedBox(height: 20),
                  Spacer(),
                  Row(
                    children: <Widget>[
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(bottom: 16, right: 16),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: primary,
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
