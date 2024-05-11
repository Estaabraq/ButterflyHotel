import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:sss/pages/signup.dart';

import 'OnboardingScreen.dart';
import 'home.dart';

import 'home.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hotel World',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 7),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    OnboaedingView()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child:Lottie.asset("assets/images/1.json")
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("GeeksForGeeks")),
      body: Center(
          child:Text("Home page",textScaleFactor: 2,)
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// // import 'package:ss/pages/details.dart';
// //
// // import 'home.dart';
// //
// //
// //
// // //
// // void main ()
// // {
// //   runApp(MyApp()) ;
// // }
// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Details(),
// //       debugShowCheckedModeBanner: false,
// //     );
// //   }
// //
// // }
// // *