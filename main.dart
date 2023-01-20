import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:startapp/listview_demo.dart';
import 'package:startapp/login_page.dart';
import 'package:startapp/image_page.dart';
import 'package:startapp/gridview_demo.dart';
import 'package:startapp/listview.dart';
import 'package:startapp/splash_screen.dart';



import 'app_damo.dart';
import 'listview_ui.dart';

void main() {
  runApp(
  Sizer(
      builder: (context, orientation, deviceType) {
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        );
      }
  )

  );
}
