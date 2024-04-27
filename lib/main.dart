import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sf_weather_app/view/screens/home/home_screen.dart';

Future<void> main() async{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key,}) : super(key: key);
  @override
  Widget build(context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      // theme: light,
      debugShowCheckedModeBanner: false,
      // locale: localizeController.locale,
      // home: SplashScreen(),
      // home: Login(exitFromApp: true),
      home: HomeScreen(),
      defaultTransition: Transition.topLevel,
      transitionDuration: const Duration(milliseconds: 500),
    );
  }
}
