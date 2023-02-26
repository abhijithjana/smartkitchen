import 'package:flutter/material.dart';
import 'package:smartkitchen/home/homescrren.dart';
import 'package:smartkitchen/route.dart';
import 'package:smartkitchen/splash/splashscree.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'smart kitchen',
      onGenerateRoute: ((settings) => generatedrouth(settings)),
      home: SplashScreen(),
    );
  }
}
