import 'package:flutter/material.dart';
import 'package:tour_de/Screen/logIn.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Welcomescreen extends StatelessWidget {
  const Welcomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Login()));
    });
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 0.75.sh,
            child: Image.asset(
              'asset/Images/logo/logo.png',
              height: 250.h,
              width: 250.w,
              fit: BoxFit.contain,
            )),
      ),
    );
  }
}
