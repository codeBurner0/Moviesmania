import 'dart:ui';

import 'package:flutter/material.dart';

import '../uskaMain.dart';

class InfoPage extends StatelessWidget {
  var userEmail;
  InfoPage({Key key, this.userEmail});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack(children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  // border: style,
                  image: DecorationImage(
                    image: AssetImage("assets/images/videezy2.gif"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.2),
                      ),
                    )),
              ),
              _user(),
            ]),
          ),
        ),
      ),
    );
  }

  Widget _user() {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            IconButton(
                iconSize: 20,
                color: Colors.black,
                onPressed: () {
                  runApp(MyApp1());
                },
                icon: Icon(Icons.arrow_back_ios_new_outlined)),
          ],
        ),
        Text("User Info",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 55,
              fontFamily: 'newspaper',
            )),
        Image(
          image: AssetImage('assets/images/infoUser.png'),
          width: 150,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "UserEmail:-",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Text(
                "ankit@gmail.com",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 100),
          child: Row(
            children: [
              Text(
                "UserID:-",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              Text(
                "1234",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 60, right: 50, top: 50),
          child: Row(
            children: [
              Text("All movies are",
                  style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: 45,
                      fontFamily: 'italicfont',
                      color: Color.fromARGB(171, 0, 0, 0)))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Row(
            children: [
              Text("different, all movies",
                  style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: 45,
                      fontFamily: 'italicfont',
                      color: Color.fromARGB(171, 0, 0, 0)))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25),
          child: Row(
            children: [
              Text("have their own life.",
                  style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      fontSize: 45,
                      fontFamily: 'italicfont',
                      color: Color.fromARGB(171, 0, 0, 0)))
            ],
          ),
        )
      ],
    ));
  }
}
