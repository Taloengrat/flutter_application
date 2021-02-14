import 'package:flutter/material.dart';
import 'package:flutter_application/Screen/signin_screen.dart';
import 'package:flutter_application/constants.dart';

class BeginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/country.gif"),
                    fit: BoxFit.cover,
                    )),

              ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                RichText(
                  text: TextSpan(
                    text: "AREA INTERESTING",
                    style: TextStyle(fontFamily: 'Staatliches', fontSize: 28)
                    // style: Theme.of(context)
                    //     .textTheme
                    //     .headline6
                    //     .copyWith(fontWeight: FontWeight.bold),
                  ),
                ),
                FittedBox(
                  child: GestureDetector(
                    onTap: () {
                      print("tapped");
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return SignInScreen();
                        },
                      ));
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 25),
                      padding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: kPrimaryColor),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Sign In",
                            style: Theme.of(context)
                                .textTheme
                                .button
                                .copyWith(color: Colors.black),
                          ),
                          SizedBox(
                            width: 6,
                          ),
                          Icon(Icons.arrow_forward, color: Colors.black),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}