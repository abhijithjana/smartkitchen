import 'package:flutter/material.dart';
import 'package:smartkitchen/home/homescrren.dart';

Route<dynamic> generatedrouth(RouteSettings Routesettings) {
  switch (Routesettings.name) {
    case Home.Routename:
      return MaterialPageRoute(
          settings: Routesettings, builder: (context) => Home());
    default:
      return MaterialPageRoute(
          settings: Routesettings,
          builder: (context) => Scaffold(
                body: Center(child: Text("Unable to find the page ")),
              ));
  }
}
