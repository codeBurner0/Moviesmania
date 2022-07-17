import 'package:flutter/material.dart';
import 'package:flutter_riverpod/all.dart';
// import 'package:flutter_riverpod/all.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/pages/infopage.dart';
import 'package:movie_app/puranaMain.dart';
import 'package:movie_app/screens/home/components/body.dart';
import '../../components/main.dart';
import '../../pages/Splash_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int c = 1234;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      bottomOpacity: 10,
      title: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "assets/images/videezyLogo.png",
                width: 40,
              ),
              Image.asset(
                "assets/icons/logo1.png",
                width: 200,
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
      // elevation: 0,
      leading: Row(
        children: [
          IconButton(
              // padding: EdgeInsets.only(left: kDefaultPadding),
              icon: Icon(Icons.movie_filter_outlined),
              color: Colors.black,
              onPressed: () {
                setState(() {
                  runApp(
                    ProviderScope(
                      child: MyApp2(),
                    ),
                  );
                });
              }),
        ],
      ),
      actions: <Widget>[
        IconButton(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          // icon: SvgPicture.asset("assets/icons/search.svg"),
          icon: Icon(
            Icons.info_outline_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            int k = c;
            c++;

            print(k++);
            runApp(MaterialApp(
              debugShowCheckedModeBanner: false,
              home: InfoPage(),
            ));
          },
        ),
      ],
    );
  }
}
