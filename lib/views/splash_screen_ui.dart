// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_task_app/views/show_all_task_ui.dart';

class SplashScreenUi extends StatefulWidget {
  const SplashScreenUi({super.key});

  @override
  State<SplashScreenUi> createState() => _SplashScreenUiState();
}

class _SplashScreenUiState extends State<SplashScreenUi> {
  @override
  void initState() {
    // โค้ดหน่วงหน้าจอ 3 วิ แล้ว เปิดไปหน้า ShowAllTaskUi แบบย้อนกลับไม่ได้
    Future.delayed(
        //ระยะเวลาหน่วง
        Duration(seconds: 3),
        //สิ่งที่ต้องทำเมื่อครบเวลา
        () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ShowAllTaskUi(),
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Stack(
        children: [
          //ชั้นที่ 1
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 25),
                Text(
                  '💥 TASK ME 💥',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 25),
                CircularProgressIndicator(
                  color: Colors.white,
                ),
              ],
            ),
          ),
          //ชั้นที่ 2
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Created by NinniN SAU',
                  style: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
                Text(
                  'Southeast Asia Uinversity',
                  style: TextStyle(
                    color: Colors.grey[300],
                  ),
                ),
                SizedBox(height: 80),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
