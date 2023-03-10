import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:smartkitchen/home/services/hservice.dart';

class Home extends StatefulWidget {
  static const String Routename = 'home';
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          icon: Icon(Icons.power),
          onPressed: () {
            Hservice().connect();
          },
        ),
      ),
    );
  }
}
