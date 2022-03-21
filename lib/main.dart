import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:job_busung/page/boynow.dart';
import 'package:job_busung/page/detail_category.dart';
import 'package:job_busung/page/home.dart';
import 'package:job_busung/page/loginregister/login.dart';
import 'package:job_busung/page/loginregister/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "login": (context) => Login(),
        "register": (context) => Register(),
        "home": (context) => Home(),
        "detail-category": (context) => CategoryDetail(),
        "buy-now": (context) => Buy(),
      },
      home: SafeArea(
          child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Color(0xFF624422), Color(0xFFCF9F69)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
              child: GetStarted())),
    );
  }
}

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: IntroductionScreen(
        globalBackgroundColor: Colors.transparent,
        dotsDecorator: DotsDecorator(
            activeShape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
            size: Size(10, 10),
            activeSize: Size(22, 10),
            color: Colors.white.withOpacity(0.5),
            activeColor: Color(0xFF00512D)),
        done: Container(
          width: 150,
          height: 40,
        ),
        onDone: () => null,
        next: Container(
          width: 150,
          height: 40,
        ),
        pages: [
          PageViewModel(
            titleWidget: Text(
              "Minum kopi emang enak , lebih enak lagi kalo ngopi bareng kamu",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            bodyWidget: Text(
              "Memiliki rasa khas yaitu rasa yang pernah ada.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white.withOpacity(0.5),
              ),
            ),
            image: Image.asset("lib/assets/images/coffee-cup 1.png"),
            decoration: PageDecoration(
              imagePadding: EdgeInsets.only(top: 100),
              bodyAlignment: Alignment.topLeft,
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              "Minum kopi emang enak , lebih enak lagi kalo ngopi bareng kamu",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            bodyWidget: Text(
              "Memiliki rasa khas yaitu rasa yang pernah ada.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white.withOpacity(0.5),
              ),
            ),
            image: Image.asset("lib/assets/images/coffee-bag 1.png"),
            decoration: PageDecoration(
              imagePadding: EdgeInsets.only(top: 100),
              bodyAlignment: Alignment.topLeft,
            ),
          ),
          PageViewModel(
            titleWidget: Text(
              "Minum kopi emang enak , lebih enak lagi kalo ngopi bareng kamu",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            bodyWidget: Text(
              "Memiliki rasa khas yaitu rasa yang pernah ada.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white.withOpacity(0.5),
              ),
            ),
            image: Image.asset("lib/assets/images/menu 1.png"),
            footer: ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 133, vertical: 30),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                primary: Color(0xFF00512D),
              ),
              child: Text(
                "Get Started",
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                Navigator.pushNamed(context, "login");
              },
            ),
            decoration: PageDecoration(
              imagePadding: EdgeInsets.only(top: 100),
              footerPadding: EdgeInsets.only(top: 100),
              bodyAlignment: Alignment.topLeft,
            ),
          ),
        ],
      ),
    );
  }
}
