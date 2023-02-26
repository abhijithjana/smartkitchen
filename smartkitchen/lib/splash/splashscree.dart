import 'package:lottie/lottie.dart';

import 'package:flutter/material.dart';
import 'package:smartkitchen/route.dart';
import 'package:smartkitchen/home/homescrren.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.orange.shade800,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Lottie.network(
                  "https://assets6.lottiefiles.com/packages/lf20_UGvCSC/loading_animation.json",
                  width: size.width,
                  fit: BoxFit.fitWidth,
                  controller: _controller, onLoaded: (compose) {
                _controller
                  ..duration = compose.duration
                  ..forward().then((value) {
                    Navigator.popAndPushNamed(context, Home.Routename);
                  });
              }),
            ),
          ],
        ),
      ),
    );
  }
}
