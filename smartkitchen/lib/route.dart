import 'package:flutter/material.dart';

Route<dynamic> generatedrouth(RouteSettings Routesettings) {
  switch (Routesettings.name) {
    default:
      return MaterialPageRoute(
          settings: Routesettings,
          builder: (context) => Scaffold(
                body: Center(child: Text("Unable to find the page ")),
              ));
  }
}
