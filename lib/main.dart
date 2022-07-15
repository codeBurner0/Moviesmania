import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
import 'package:movie_app/pages/login_page.dart';
import 'package:movie_app/uskaMain.dart';
import 'package:movie_app/pages/Splash_page.dart';

import 'puranaMain.dart';

void main() {
  runApp(
    SplashPage(
      onInitializationComplete: (() => runApp(
            ProviderScope(
              child: MaterialApp(
                  debugShowCheckedModeBanner: false, home: LoginPage()),
            ),
          )),
    ),
  );
}
