import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/constants/app_assets.dart';
import 'package:todo_app/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      Duration(seconds: 3),
      ()=>Get.to(()=>LoginScreen()));
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size.height;
    final maxWidth = MediaQuery.of(context).size.width;   
    return Scaffold(
      body: Container(
        height: maxHeight,width: maxWidth,
        decoration:const BoxDecoration(
          image: DecorationImage(fit: BoxFit.fill,
            image: AssetImage(AppAssets.splashBg))
        ),
        child: Column(
          children: [
            SizedBox(height: maxHeight*.25,),
            Container(
              height: maxHeight*.2,width: maxWidth*.3,
              decoration:const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppAssets.todoIcon))
              ),
            ),
            SizedBox(height: maxHeight*.05,),
            const Text('Welcome to Notes',style: TextStyle(color: Colors.white,
              fontSize: 20,fontWeight: FontWeight.w500
            ),)
          ],
        ),
      ),
    );
  }
}