
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/constants/app_assets.dart';
import 'package:todo_app/constants/app_color.dart';
import 'package:todo_app/screens/homescreen.dart';

class LoginScreen extends StatefulWidget {
   LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController(text: '');
 TextEditingController otpController = TextEditingController(text: '');


  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size.height;
    final maxWidth = MediaQuery.of(context).size.width;     
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        height: maxHeight,
        width: maxWidth,
        decoration:const BoxDecoration(
          image: DecorationImage(fit: BoxFit.fill,
            image: AssetImage(AppAssets.loginBg))
        ),
        child: Column(
          children: [
           const Spacer(flex: 3,),
            Container(
              height: maxHeight*.2,width: maxWidth*.3,
             decoration:const BoxDecoration(
              image: DecorationImage(fit: BoxFit.fill,
            image: AssetImage(AppAssets.todoIcon))
             ),
            ),
            const Spacer(),
           const Text('Welcome to Notes',style: TextStyle(
              fontSize: 20,fontWeight: FontWeight.w400
            ),),
            const Spacer(),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: AppColor.surface,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,spreadRadius: 2,
                    color: Colors.grey.shade300
                  )
                ]
              ),
              margin: EdgeInsets.symmetric(horizontal: maxWidth*.07),
              child: TextField(
                controller: phoneController,
                decoration:const InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter the mobile number'
                ),
              ),
            ),
           const Spacer(),
           Align(alignment: Alignment.bottomRight,
             child: Column(
              children: [
                const Text('send OTP',style: TextStyle(
                fontSize: 20,fontWeight: FontWeight.w500
              ),),
             const SizedBox(height: 10,),
              InkWell(
                onTap: () {
                  Get.to(HomeScreen());
                },
                child:const CircleAvatar(
                backgroundColor: AppColor.yellow,  
                radius: 25,
                child: Icon(Icons.arrow_forward_rounded,color: Colors.white,),),
              )
              ],
             ),
           ),
           const Spacer(flex: 3,),
          ],
        ),
      ),
    );
  }
}