import 'dart:async';
import 'package:flutter/material.dart';
import 'package:islamic/layout/home_layout.dart';
import 'package:provider/provider.dart';
import '../core/provider/app_provider.dart';

class SplashScreen extends StatelessWidget {
   static const String routeName="SplashScreen";

  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context,HomeLayout.routeName);
    });
    var mediaQuery=MediaQuery.of(context).size;
    var appProvider = Provider.of<AppProvider>(context);
 return Scaffold(
   body: Image.asset(
     appProvider.isDark()
     ? "assets/images/bg_dark.png"
     : "assets/images/bg3.jpg",
     width: mediaQuery.width,
     height: mediaQuery.height,
     //fit: BoxFit.cover,

   ),
 );
  }
}
