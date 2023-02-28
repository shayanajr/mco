import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mco/screen/home_screen.dart';
// import 'package:mco/core/controllers/user/user_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // final UserController userController = Get.put(UserController());

  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(milliseconds: 3000),
          () {
        // userController.checkUserLogin();
            Get.to(HomeScreen());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/icons/Logo final-mco.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}