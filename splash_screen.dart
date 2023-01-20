import 'dart:async';

import 'package:flutter/material.dart';
import 'package:startapp/listview_demo.dart';

import 'listview_ui.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>listviewUi())); });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
        Center(child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsRWy-BYi6gkwyR1H3nfES7CLXk1WSWFY82w&usqp=CAU'),),
    );
  }
}

