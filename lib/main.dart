import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutterdesigns/AppList.dart';
import 'package:flutterdesigns/constants.dart';
import 'package:flutterdesigns/plant-shop/main.dart';
import 'package:flutterdesigns/plant-ui/screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Designs',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
      ),
      initialRoute: AppList.id,
      routes: {
        AppList.id: (context) => AppList(),
        HomeScreen.id: (context) => HomeScreen(),
        PlantShop.id: (context) => PlantShop(),
      },
      onUnknownRoute: (RouteSettings setting) {
        return new MaterialPageRoute(
          builder: (context) => Scaffold(
            backgroundColor: Color(0xFF041224),
            body: PageNotFound(),
          ),
        );
      },
    );
  }
}

class PageNotFound extends StatelessWidget {
  const PageNotFound({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              vertical: 20,
            ),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: '404\n',
                style: Theme.of(context).textTheme.headline3.copyWith(
                      color: Colors.white,
                    ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Oops! Looks like you are headed the wrong way.',
                    style: GoogleFonts.lato(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Color(0xFF184C54),
            onPressed: () {
              Navigator.pushNamed(context, AppList.id);
            },
            child: Text(
              'Go Home'.toUpperCase(),
              style: GoogleFonts.lato(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
